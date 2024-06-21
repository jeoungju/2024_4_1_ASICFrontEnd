`timescale 1ps/1ps
`define T_CLK 10
module testbench (); 

//reg [23:0] v_t;
//reg [4:0] i_b;
reg clk, n_rst;
reg start;
//wire [23:0] ekf_soc, ekf_vrc;
wire [7:0] xn_data;
wire [7:0] yn_data;

integer i;
reg [10:0] r_addr;
reg [7:0] xn_mem[0:1499];
initial $readmemh("../../rtl/MEMORY/xn_data.txt",xn_mem);
initial begin
    r_addr = 11'h0000;
    wait((n_rst == 1'b1)&&(start == 1'b1));
        for (i = 0; i<1500;i=i+1) begin
            #(`T_CLK*1 ) r_addr = r_addr + 11'h0001;
        end
end

assign xn_data = xn_mem[r_addr]; 


top u_top (
    .clk(clk),
    .n_rst(n_rst),
    .start(start),
    .xn_data(xn_data),
    .yn_data(yn_data)
);

always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

initial begin
        start = 1'b0;

        #20;
        start = 1'b1;
        #10;
        start = 1'b0;
        #21000; 
        

        $finish;
    end
initial begin
	$fsdbDumpfile("test.fsdb");
	$fsdbDumpvars(0);
end
	
endmodule

