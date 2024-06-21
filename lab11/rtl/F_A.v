`timescale 1ps/1ps
//Full Adder
module F_A (
    input A,
    input B,
    input c_in,
    output sum,
    output c_out
);
    wire sum_ab;
    wire c_ab;
    wire c_abc;
    
    assign sum_ab = A ^ B;
    assign c_ab = A & B;

    assign c_abc = sum_ab & c_in;


    assign sum = sum_ab ^ c_in;
    assign c_out = c_ab | c_abc;


endmodule
