//4x1 mux

module mux (

    input [1:0] a,

    input [1:0] b,

    input [1:0] c,

    input [1:0] d,

    input [1:0] sel,

    output [1:0] out

);

    reg [1:0] y;



    always @(*) begin

        case (sel)

            2'b00 : y = a;

            2'b01 : y = b;

            2'b10 : y = c;

            2'b11 : y = d;

            default : y = 1'b0; 

        endcase

    end



    assign out = y;

endmodule
