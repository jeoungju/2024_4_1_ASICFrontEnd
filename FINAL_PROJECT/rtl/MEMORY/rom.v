`timescale 1ps/1ps
// ----------------------------
//      ASIC FINAL PROJECT
//      x[n] rom data
//      D_WIDTH = 8
//      A_WIDTH = 13 => 5000 data.
// ----------------------------
module rom #(
    parameter D_WIDTH = ,
    parameter A_WIDTH
    )(
	clk,
    n_rst,
	raddr,
	data_out
);



input	        clk, n_rst;

input	        [A_WIDTH-1:0]  raddr;

output reg	    [D_WIDTH-1:0]  data_out;


reg [D_WIDTH-1:0]           rom [0 : 2**A_WIDTH-1];


initial begin
    $readmemh("../src/rtl/MEMORY/xn_data.txt", rom);
end

always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        data_out <= {D_WIDTH{1'b0}};
    end
    else begin
        data_out <= rom[raddr];
    end
end


endmodule
