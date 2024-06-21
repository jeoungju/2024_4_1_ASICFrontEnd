`timescale 1ps/1ps
//16bit ripple carry adder
module full_adder_16bit (
    input [15:0] A,
    input [15:0] B,
    input c_in,
    output [15:0] sum,
    output c_out
);  

	wire c_in1, c_in2, c_in3, c_in4, c_in5, c_in6;
	wire c_in7, c_in8, c_in9, c_in10, c_in11, c_in12;
	wire c_in13, c_in14, c_in15;
	F_A u_F_A0 (
		.A(A[0]),
		.B(B[0]),
		.c_in(c_in),
		.sum(sum[0]),
		.c_out(c_in1)
	);

	F_A u_F_A1 (
                .A(A[1]),
                .B(B[1]),
                .c_in(c_in1),
                .sum(sum[1]),
                .c_out(c_in2)
        );

	F_A u_F_A2 (
                .A(A[2]),
                .B(B[2]),
                .c_in(c_in2),
                .sum(sum[2]),
                .c_out(c_in3)
        );

	F_A u_F_A3 (
                .A(A[3]),
                .B(B[3]),
                .c_in(c_in3),
                .sum(sum[3]),
                .c_out(c_in4)
        );

	F_A u_F_A4 (
                .A(A[4]),
                .B(B[4]),
                .c_in(c_in4),
                .sum(sum[4]),
                .c_out(c_in5)
        );

	F_A u_F_A5 (
                .A(A[5]),
                .B(B[5]),
                .c_in(c_in5),
                .sum(sum[5]),
                .c_out(c_in6)
        );

	F_A u_F_A6 (
                .A(A[6]),
                .B(B[6]),
                .c_in(c_in6),
                .sum(sum[6]),
                .c_out(c_in7)
        );

	F_A u_F_A7 (
                .A(A[7]),
                .B(B[7]),
                .c_in(c_in7),
                .sum(sum[7]),
                .c_out(c_in8)
        );

	F_A u_F_A8 (
                .A(A[8]),
                .B(B[8]),
                .c_in(c_in8),
                .sum(sum[8]),
                .c_out(c_in9)
        );

	F_A u_F_A9 (
                .A(A[9]),
                .B(B[9]),
                .c_in(c_in9),
                .sum(sum[9]),
                .c_out(c_in10)
        );

	F_A u_F_A10 (
                .A(A[10]),
                .B(B[10]),
                .c_in(c_in10),
                .sum(sum[10]),
                .c_out(c_in11)
        );

	F_A u_F_A11 (
                .A(A[11]),
                .B(B[11]),
                .c_in(c_in11),
                .sum(sum[11]),
                .c_out(c_in12)
        );

	F_A u_F_A12 (
                .A(A[12]),
                .B(B[12]),
                .c_in(c_in12),
                .sum(sum[12]),
                .c_out(c_in13)
        );

	F_A u_F_A13 (
                .A(A[13]),
                .B(B[13]),
                .c_in(c_in13),
                .sum(sum[13]),
                .c_out(c_in14)
        );

	F_A u_F_A14 (
                .A(A[14]),
                .B(B[14]),
                .c_in(c_in14),
                .sum(sum[14]),
                .c_out(c_in15)
        );

	F_A u_F_A15 (
                .A(A[15]),
                .B(B[15]),
                .c_in(c_in15),
                .sum(sum[15]),
                .c_out(c_out)
        );

endmodule
