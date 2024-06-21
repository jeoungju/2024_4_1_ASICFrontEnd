/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP5-5
// Date      : Wed Apr  3 21:24:24 2024
/////////////////////////////////////////////////////////////


module combo_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [4:0] A;
  input [4:0] B;
  output [4:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;

  IVI U1 ( .A(n7), .Z(n1) );
  EO U2 ( .A(n2), .B(n3), .Z(SUM[4]) );
  EO U3 ( .A(B[4]), .B(A[4]), .Z(n3) );
  EN U4 ( .A(ADD_SUB), .B(n4), .Z(n2) );
  AO2 U5 ( .A(A[3]), .B(n5), .C(n6), .D(n1), .Z(n4) );
  OR2 U6 ( .A(n1), .B(n6), .Z(n5) );
  EO U7 ( .A(n8), .B(n6), .Z(SUM[3]) );
  EO U8 ( .A(ADD_SUB), .B(B[3]), .Z(n6) );
  EN U9 ( .A(A[3]), .B(n7), .Z(n8) );
  AO2 U10 ( .A(n9), .B(n10), .C(n11), .D(A[2]), .Z(n7) );
  OR2 U11 ( .A(n10), .B(n9), .Z(n11) );
  EO U12 ( .A(n12), .B(n10), .Z(SUM[2]) );
  EO U13 ( .A(ADD_SUB), .B(B[2]), .Z(n10) );
  EO U14 ( .A(A[2]), .B(n9), .Z(n12) );
  EON1 U15 ( .A(n13), .B(n14), .C(n15), .D(A[1]), .Z(n9) );
  ND2 U16 ( .A(n14), .B(n13), .Z(n15) );
  EN U17 ( .A(n16), .B(n14), .Z(SUM[1]) );
  EN U18 ( .A(ADD_SUB), .B(B[1]), .Z(n14) );
  EN U19 ( .A(A[1]), .B(n13), .Z(n16) );
  AO2 U20 ( .A(n17), .B(ADD_SUB), .C(n18), .D(A[0]), .Z(n13) );
  OR2 U21 ( .A(ADD_SUB), .B(n17), .Z(n18) );
  EO U22 ( .A(n17), .B(n19), .Z(SUM[0]) );
  EO U23 ( .A(A[0]), .B(ADD_SUB), .Z(n19) );
  EO U24 ( .A(ADD_SUB), .B(B[0]), .Z(n17) );
endmodule


module combo ( Cin1, sel, Cin2, Cout );
  input [4:0] Cin1;
  input [4:0] Cin2;
  output [4:0] Cout;
  input sel;
  wire   \U1/U1/Z_0 ;
  assign \U1/U1/Z_0  = sel;

  combo_DW01_addsub_0 r61 ( .A(Cin1), .B(Cin2), .CI(1'b0), .ADD_SUB(
        \U1/U1/Z_0 ), .SUM(Cout) );
endmodule


module my_design ( clk, n_rst, data1, data2, sel, Cin1, Cin2, out1, out2, out3, 
        Cout );
  input [4:0] data1;
  input [4:0] data2;
  input [4:0] Cin1;
  input [4:0] Cin2;
  output [4:0] out1;
  output [4:0] out2;
  output [4:0] out3;
  output [4:0] Cout;
  input clk, n_rst, sel;
  wire   N8, N9, N10, N11, N12, N14, N15, N16, N17, N18, R3, N29, N30, N31,
         N32, N33, n3, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61;
  assign out3[4] = R3;
  assign out3[3] = R3;
  assign out3[2] = R3;
  assign out3[1] = R3;
  assign out3[0] = R3;

  FD2 \R1_reg[4]  ( .D(N12), .CP(clk), .CD(n_rst), .QN(n53) );
  FD2 \R1_reg[3]  ( .D(N11), .CP(clk), .CD(n_rst), .QN(n56) );
  FD2 \R1_reg[2]  ( .D(N10), .CP(clk), .CD(n_rst), .Q(n26), .QN(n58) );
  FD2 \R1_reg[1]  ( .D(N9), .CP(clk), .CD(n_rst), .QN(n59) );
  FD2 \R1_reg[0]  ( .D(N8), .CP(clk), .CD(n_rst), .QN(n52) );
  FD2 \R2_reg[4]  ( .D(N18), .CP(clk), .CD(n_rst), .QN(n54) );
  FD2 \R2_reg[3]  ( .D(N17), .CP(clk), .CD(n_rst), .Q(n25), .QN(n55) );
  FD2 \R2_reg[2]  ( .D(N16), .CP(clk), .CD(n_rst), .Q(n27), .QN(n57) );
  FD2 \R2_reg[1]  ( .D(N15), .CP(clk), .CD(n_rst), .QN(n60) );
  FD2 \R2_reg[0]  ( .D(N14), .CP(clk), .CD(n_rst), .Q(n28), .QN(n61) );
  FD2 R3_reg ( .D(sel), .CP(clk), .CD(n_rst), .Q(R3), .QN(n3) );
  FD2 \R4_reg[4]  ( .D(N33), .CP(clk), .CD(n_rst), .QN(out2[4]) );
  FD2 \R4_reg[3]  ( .D(N32), .CP(clk), .CD(n_rst), .QN(out2[3]) );
  FD2 \R4_reg[2]  ( .D(N31), .CP(clk), .CD(n_rst), .QN(out2[2]) );
  FD2 \R4_reg[1]  ( .D(N30), .CP(clk), .CD(n_rst), .QN(out2[1]) );
  FD2 \R4_reg[0]  ( .D(N29), .CP(clk), .CD(n_rst), .QN(out2[0]) );
  combo u_combo ( .Cin1(Cin1), .sel(sel), .Cin2(Cin2), .Cout(Cout) );
  EO U35 ( .A(n29), .B(n30), .Z(out1[4]) );
  EN U36 ( .A(n54), .B(n53), .Z(n30) );
  AO5 U37 ( .A(n56), .B(n31), .C(n25), .Z(n29) );
  AO2 U38 ( .A(n57), .B(n32), .C(n33), .D(n26), .Z(n31) );
  ND2 U39 ( .A(n58), .B(n34), .Z(n32) );
  EO U40 ( .A(n35), .B(n36), .Z(out1[3]) );
  EO U41 ( .A(n25), .B(n56), .Z(n36) );
  AO4 U42 ( .A(n58), .B(n34), .C(n37), .D(n27), .Z(n35) );
  NR2 U43 ( .A(n33), .B(n26), .Z(n37) );
  IV U44 ( .A(n33), .Z(n34) );
  EO U45 ( .A(n38), .B(n33), .Z(out1[2]) );
  EO1 U46 ( .A(n39), .B(n59), .C(n60), .D(n40), .Z(n33) );
  ND2 U47 ( .A(n40), .B(n60), .Z(n39) );
  EO U48 ( .A(n27), .B(n58), .Z(n38) );
  EN U49 ( .A(n40), .B(n41), .Z(out1[1]) );
  EO U50 ( .A(n59), .B(n60), .Z(n41) );
  AO7 U51 ( .A(n52), .B(n28), .C(n40), .Z(out1[0]) );
  ND2 U52 ( .A(n52), .B(n28), .Z(n40) );
  MUX21L U53 ( .A(n42), .B(n43), .S(sel), .Z(N9) );
  MUX21L U54 ( .A(n44), .B(n45), .S(sel), .Z(N8) );
  AO5 U55 ( .A(n54), .B(n3), .C(n53), .Z(N33) );
  AO5 U56 ( .A(n56), .B(n3), .C(n55), .Z(N32) );
  AO5 U57 ( .A(n58), .B(n3), .C(n57), .Z(N31) );
  AO5 U58 ( .A(n60), .B(n3), .C(n59), .Z(N30) );
  AO5 U59 ( .A(n61), .B(n3), .C(n52), .Z(N29) );
  MUX21L U60 ( .A(n46), .B(n47), .S(sel), .Z(N18) );
  MUX21L U61 ( .A(n48), .B(n49), .S(sel), .Z(N17) );
  MUX21L U62 ( .A(n50), .B(n51), .S(sel), .Z(N16) );
  MUX21L U63 ( .A(n43), .B(n42), .S(sel), .Z(N15) );
  IV U64 ( .A(data1[1]), .Z(n42) );
  IV U65 ( .A(data2[1]), .Z(n43) );
  MUX21L U66 ( .A(n45), .B(n44), .S(sel), .Z(N14) );
  IV U67 ( .A(data1[0]), .Z(n44) );
  IV U68 ( .A(data2[0]), .Z(n45) );
  MUX21L U69 ( .A(n47), .B(n46), .S(sel), .Z(N12) );
  IV U70 ( .A(data2[4]), .Z(n46) );
  IV U71 ( .A(data1[4]), .Z(n47) );
  MUX21L U72 ( .A(n49), .B(n48), .S(sel), .Z(N11) );
  IV U73 ( .A(data2[3]), .Z(n48) );
  IV U74 ( .A(data1[3]), .Z(n49) );
  MUX21L U75 ( .A(n51), .B(n50), .S(sel), .Z(N10) );
  IV U76 ( .A(data2[2]), .Z(n50) );
  IV U77 ( .A(data1[2]), .Z(n51) );
endmodule

