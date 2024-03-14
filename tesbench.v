`timescale 1ps/1ps

module testbench ();

/*
reg clk;
reg n_rst;

always #5 clk = ~clk;



    initial begin

        clk = 1'b0;

        n_rst = 1'b0;

        #7 n_rst = 1'b1;

    end
*/

initial begin


end

initial begin

$fsdbDumpfile("wave.fsdb");

$fsdbDumpvars(0);

end
endmodule
