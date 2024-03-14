`timescale 1ps/1ps

//Half Adder

module H_A (

    input A,

    input B,

    output sum,

    output c_out

);
	
    // A, B same 0
    // A, B diffr 1
    // => XOR is sum!
    assign sum = A ^ B;

    //A, B same carry 1
    // => And is carry!
    assign c_out = A & B;

endmodule
