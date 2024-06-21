`timescale 1ns/1ps
`define T_CLK 6
module testbench ();


reg clk;
reg n_rst;
reg [4:0] data1, data2;
reg sel;
reg [4:0] Cin1, Cin2;
wire [4:0] out1, out2, out3, Cout;

mt_design u_my_design (
	.clk(clk),
	.n_rst(n_rst),
	.data1(data1),
	.data2(data2),
	.sel(sel),
	.Cin1(Cin1),
	.Cin2(Cin2),
	.out1(out1),
	.out2(out2),
	.out3(out3),
	.Cout(Cout)
);


always #3 clk = ~clk;



    initial begin

        clk = 1'b0;

        n_rst = 1'b0;

        #5 n_rst = 1'b1;

    end


initial begin
	data1 = 5'h0;
	data2 = 5'h0;
	sel = 1'b0;
	Cin1 = 5'h0;
	Cin2 = 5'h0;
	#6;
	data1 = 5'b1_0011;
	data2 = 5'b0_0011;
	sel = 1'b0;
	Cin2 = 5'b0_0110;
	Cin1 = 5'b0_1001;
	#30;

end

`ifdef SDF_PRE
	initial begin
		$sdf_annotate("../../syn/net/my_design_pre.sdf",u_my_design);
	end
`endif

initial begin
`ifdef SDF_PRE
	$fsdbDumpfile("test_pre.fsdb");
`else  
	$fsdbDumpfile("test.fsdb");
`endif

$fsdbDumpvars(0);

end

/*
initial begin
	wait (n_rst == 1'b1);
	$display("%t : %b", $time, );
end
*/
endmodule
