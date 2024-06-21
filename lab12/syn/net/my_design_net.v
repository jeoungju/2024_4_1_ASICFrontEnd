/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-5
// Date      : Thu May 23 10:37:14 2024
/////////////////////////////////////////////////////////////


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
  wire   N8, N9, N10, N11, N12, N14, N15, N16, N17, N18, N29, N30, N31, N32,
         N33, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n118, n119, n120, n121, n122, n123, n124, n125,
         n126;
  wire   [4:0] R1;
  wire   [4:0] R2;

  FD2 R1_reg_4_ ( .D(N12), .CP(clk), .CD(n_rst), .Q(R1[4]) );
  FD2 R1_reg_3_ ( .D(N11), .CP(clk), .CD(n_rst), .Q(R1[3]), .QN(n125) );
  FD2 R1_reg_2_ ( .D(N10), .CP(clk), .CD(n_rst), .Q(R1[2]), .QN(n122) );
  FD2 R1_reg_1_ ( .D(N9), .CP(clk), .CD(n_rst), .Q(R1[1]), .QN(n124) );
  FD2 R1_reg_0_ ( .D(N8), .CP(clk), .CD(n_rst), .Q(R1[0]), .QN(n121) );
  FD2 R2_reg_4_ ( .D(N18), .CP(clk), .CD(n_rst), .Q(R2[4]) );
  FD2 R2_reg_3_ ( .D(N17), .CP(clk), .CD(n_rst), .Q(R2[3]), .QN(n120) );
  FD2 R2_reg_2_ ( .D(N16), .CP(clk), .CD(n_rst), .Q(R2[2]), .QN(n126) );
  FD2 R2_reg_1_ ( .D(N15), .CP(clk), .CD(n_rst), .Q(R2[1]), .QN(n119) );
  FD2 R2_reg_0_ ( .D(N14), .CP(clk), .CD(n_rst), .Q(R2[0]), .QN(n123) );
  FD2 R3_reg ( .D(sel), .CP(clk), .CD(n_rst), .Q(out3[1]), .QN(n118) );
  FD2 R4_reg_4_ ( .D(N33), .CP(clk), .CD(n_rst), .QN(out2[4]) );
  FD2 R4_reg_3_ ( .D(N32), .CP(clk), .CD(n_rst), .QN(out2[3]) );
  FD2 R4_reg_2_ ( .D(N31), .CP(clk), .CD(n_rst), .QN(out2[2]) );
  FD2 R4_reg_1_ ( .D(N30), .CP(clk), .CD(n_rst), .QN(out2[1]) );
  FD2 R4_reg_0_ ( .D(N29), .CP(clk), .CD(n_rst), .QN(out2[0]) );
  IVDA U71 ( .A(out3[1]), .Z(out3[2]) );
  IVDA U72 ( .A(out3[1]), .Z(out3[3]) );
  IVDA U73 ( .A(out3[1]), .Z(out3[4]) );
  IVDA U74 ( .A(out3[1]), .Z(out3[0]) );
  NR2I U75 ( .A(R1[0]), .B(R2[0]), .Z(n85) );
  NR2I U76 ( .A(n121), .B(n123), .Z(n44) );
  NR2I U77 ( .A(n85), .B(n44), .Z(out1[0]) );
  NR2I U78 ( .A(n124), .B(n119), .Z(n45) );
  NR2I U79 ( .A(R1[1]), .B(R2[1]), .Z(n86) );
  NR2I U80 ( .A(n45), .B(n86), .Z(n46) );
  ND2I U81 ( .A(R2[0]), .B(n121), .Z(n47) );
  ENI U82 ( .A(n46), .B(n47), .Z(out1[1]) );
  ND2I U83 ( .A(R1[2]), .B(R2[2]), .Z(n89) );
  ND2I U84 ( .A(n122), .B(n126), .Z(n87) );
  ND2I U85 ( .A(n89), .B(n87), .Z(n48) );
  AO5 U86 ( .A(R1[1]), .B(n119), .C(n47), .Z(n50) );
  ENI U87 ( .A(n48), .B(n50), .Z(out1[2]) );
  NR2I U88 ( .A(n125), .B(n120), .Z(n49) );
  NR2I U89 ( .A(R1[3]), .B(R2[3]), .Z(n90) );
  NR2I U90 ( .A(n49), .B(n90), .Z(n51) );
  AO5 U91 ( .A(R2[2]), .B(n50), .C(n122), .Z(n52) );
  ENI U92 ( .A(n51), .B(n52), .Z(out1[3]) );
  NR2I U93 ( .A(R2[4]), .B(R1[4]), .Z(n92) );
  AO6 U94 ( .A(R1[4]), .B(R2[4]), .C(n92), .Z(n54) );
  AO5 U95 ( .A(n120), .B(n52), .C(R1[3]), .Z(n53) );
  EOI U96 ( .A(n54), .B(n53), .Z(out1[4]) );
  IVDA U97 ( .A(Cin1[0]), .Y(n57) );
  IVDA U98 ( .A(Cin2[0]), .Y(n58) );
  AO2 U99 ( .A(Cin2[0]), .B(Cin1[0]), .C(n57), .D(n58), .Z(Cout[0]) );
  IVDA U100 ( .A(Cin1[1]), .Y(n62) );
  NR2I U101 ( .A(Cin2[1]), .B(n62), .Z(n56) );
  IVDA U102 ( .A(Cin2[1]), .Y(n55) );
  NR2I U103 ( .A(Cin1[1]), .B(n55), .Z(n63) );
  NR2I U104 ( .A(n56), .B(n63), .Z(n60) );
  NR2I U105 ( .A(Cin1[0]), .B(n58), .Z(n64) );
  NR2I U106 ( .A(n58), .B(n57), .Z(n65) );
  IVDA U107 ( .A(sel), .Y(n111) );
  AO2 U108 ( .A(sel), .B(n64), .C(n65), .D(n111), .Z(n59) );
  EOI U109 ( .A(n60), .B(n59), .Z(Cout[1]) );
  IVDA U110 ( .A(Cin1[2]), .Y(n72) );
  NR2I U111 ( .A(Cin2[2]), .B(n72), .Z(n71) );
  IVDA U112 ( .A(Cin2[2]), .Y(n73) );
  NR2I U113 ( .A(Cin1[2]), .B(n73), .Z(n61) );
  NR2I U114 ( .A(n71), .B(n61), .Z(n67) );
  AO4 U115 ( .A(n64), .B(n63), .C(Cin2[1]), .D(n62), .Z(n70) );
  AO5 U116 ( .A(Cin2[1]), .B(n65), .C(Cin1[1]), .Z(n74) );
  AO2 U117 ( .A(sel), .B(n70), .C(n74), .D(n111), .Z(n66) );
  ENI U118 ( .A(n67), .B(n66), .Z(Cout[2]) );
  IVDA U119 ( .A(Cin1[3]), .Y(n79) );
  NR2I U120 ( .A(Cin2[3]), .B(n79), .Z(n69) );
  IVDA U121 ( .A(Cin2[3]), .Y(n68) );
  NR2I U122 ( .A(Cin1[3]), .B(n68), .Z(n78) );
  NR2I U123 ( .A(n69), .B(n78), .Z(n76) );
  AO4 U124 ( .A(Cin1[2]), .B(n73), .C(n71), .D(n70), .Z(n77) );
  AO5 U125 ( .A(n74), .B(n73), .C(n72), .Z(n80) );
  AO2 U126 ( .A(sel), .B(n77), .C(n80), .D(n111), .Z(n75) );
  EOI U127 ( .A(n76), .B(n75), .Z(Cout[3]) );
  ENI U128 ( .A(Cin2[4]), .B(Cin1[4]), .Z(n84) );
  AO4 U129 ( .A(Cin2[3]), .B(n79), .C(n78), .D(n77), .Z(n82) );
  AO5 U130 ( .A(Cin1[3]), .B(Cin2[3]), .C(n80), .Z(n81) );
  AO2 U131 ( .A(sel), .B(n82), .C(n81), .D(n111), .Z(n83) );
  ENI U132 ( .A(n84), .B(n83), .Z(Cout[4]) );
  AO4 U133 ( .A(n85), .B(n118), .C(n121), .D(n123), .Z(N29) );
  AO4 U134 ( .A(n86), .B(n118), .C(n124), .D(n119), .Z(N30) );
  ND2I U135 ( .A(out3[1]), .B(n87), .Z(n88) );
  ND2I U136 ( .A(n89), .B(n88), .Z(N31) );
  AO4 U137 ( .A(n90), .B(n118), .C(n125), .D(n120), .Z(N32) );
  ND2I U138 ( .A(R2[4]), .B(R1[4]), .Z(n91) );
  AO7 U139 ( .A(n92), .B(n118), .C(n91), .Z(N33) );
  ND2I U140 ( .A(data2[0]), .B(n111), .Z(n94) );
  ND2I U141 ( .A(sel), .B(data1[0]), .Z(n93) );
  ND2I U142 ( .A(n94), .B(n93), .Z(N14) );
  ND2I U143 ( .A(data2[1]), .B(n111), .Z(n96) );
  ND2I U144 ( .A(sel), .B(data1[1]), .Z(n95) );
  ND2I U145 ( .A(n96), .B(n95), .Z(N15) );
  ND2I U146 ( .A(data2[2]), .B(n111), .Z(n98) );
  ND2I U147 ( .A(sel), .B(data1[2]), .Z(n97) );
  ND2I U148 ( .A(n98), .B(n97), .Z(N16) );
  ND2I U149 ( .A(data2[3]), .B(n111), .Z(n100) );
  ND2I U150 ( .A(sel), .B(data1[3]), .Z(n99) );
  ND2I U151 ( .A(n100), .B(n99), .Z(N17) );
  ND2I U152 ( .A(data2[4]), .B(n111), .Z(n102) );
  ND2I U153 ( .A(sel), .B(data1[4]), .Z(n101) );
  ND2I U154 ( .A(n102), .B(n101), .Z(N18) );
  ND2I U155 ( .A(data1[0]), .B(n111), .Z(n104) );
  ND2I U156 ( .A(sel), .B(data2[0]), .Z(n103) );
  ND2I U157 ( .A(n104), .B(n103), .Z(N8) );
  ND2I U158 ( .A(data1[1]), .B(n111), .Z(n106) );
  ND2I U159 ( .A(sel), .B(data2[1]), .Z(n105) );
  ND2I U160 ( .A(n106), .B(n105), .Z(N9) );
  ND2I U161 ( .A(data1[2]), .B(n111), .Z(n108) );
  ND2I U162 ( .A(sel), .B(data2[2]), .Z(n107) );
  ND2I U163 ( .A(n108), .B(n107), .Z(N10) );
  ND2I U164 ( .A(data1[3]), .B(n111), .Z(n110) );
  ND2I U165 ( .A(sel), .B(data2[3]), .Z(n109) );
  ND2I U166 ( .A(n110), .B(n109), .Z(N11) );
  ND2I U167 ( .A(data1[4]), .B(n111), .Z(n113) );
  ND2I U168 ( .A(sel), .B(data2[4]), .Z(n112) );
  ND2I U169 ( .A(n113), .B(n112), .Z(N12) );
endmodule

