`timescale 1ps/1ps

module testbench();

    reg A;

    reg B;

    reg c_in;

    wire sum;

    wire c_out;

F_A u_F_A (
	.A(A),
	.B(B),
	.c_in(c_in),
	.c_out(c_out),
	.sum(sum)
);

initial begin
	//carry no exsist
	A = 1'b0;
	B = 1'b0;
	c_in = 1'b0;
	#10;

	A = 1'b1;
        B = 1'b0;
        c_in = 1'b0;
        #10;

	A = 1'b0;
        B = 1'b1;
        c_in = 1'b0;
        #10;
	
	A = 1'b1;
        B = 1'b1;
        c_in = 1'b0;
        #10;

	//carry exsist
	A = 1'b0;
        B = 1'b0;
        c_in = 1'b1;
        #10;

        A = 1'b1;
        B = 1'b0;
        c_in = 1'b1;
        #10;

        A = 1'b0;
        B = 1'b1;
        c_in = 1'b1;
        #10;

        A = 1'b1;
        B = 1'b1;
        c_in = 1'b1;
        #10;
	
	$finish;
end

initial begin

$fsdbDumpfile("wave.fsdb");

$fsdbDumpvars(0);

end

endmodule
