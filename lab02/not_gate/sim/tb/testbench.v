`timescale 1ns/1ns

module testbench();

reg a;
wire o;

not_gate u_not_gate(
	.a(a),
	.o(o)
);

initial begin
	a = 1'b0;
	#10;
	a = 1'b1;
	#10;
	a = 1'b0;



end

initial begin

$display("%t: %b - %b", $time, a, o);

#10 $display("%t: %b - %b", $time, a, o);

#10 $display("%t: %b - %b", $time, a, o);

#10; 

$finish;

end

initial begin

$fsdbDumpfile("wave.fsdb");

$fsdbDumpvars(0);

end
endmodule
