/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-5
// Date      : Wed May 15 19:53:35 2024
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
  wire   N8, N9, N10, N11, N12, N14, N15, N16, N17, N18, R3, N29, N30, N31,
         N32, N33, n49, n50, n53, n55, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n194, n197;
  wire   [4:0] R1;
  wire   [4:0] R2;
  wire   [4:0] R4;

  FD2 R1_reg_4_ ( .D(N12), .CP(clk), .CD(n49), .Q(R1[4]), .QN(n180) );
  FD2 R1_reg_3_ ( .D(N11), .CP(clk), .CD(n49), .Q(R1[3]), .QN(n186) );
  FD2 R1_reg_2_ ( .D(N10), .CP(clk), .CD(n49), .Q(R1[2]), .QN(n183) );
  FD2 R1_reg_1_ ( .D(N9), .CP(clk), .CD(n49), .Q(R1[1]), .QN(n188) );
  FD2 R1_reg_0_ ( .D(N8), .CP(clk), .CD(n49), .Q(R1[0]), .QN(n179) );
  FD2 R2_reg_4_ ( .D(N18), .CP(clk), .CD(n49), .Q(R2[4]), .QN(n181) );
  FD2 R2_reg_3_ ( .D(N17), .CP(clk), .CD(n49), .Q(R2[3]), .QN(n185) );
  FD2 R2_reg_2_ ( .D(N16), .CP(clk), .CD(n49), .Q(R2[2]), .QN(n184) );
  FD2 R2_reg_1_ ( .D(N15), .CP(clk), .CD(n49), .Q(R2[1]), .QN(n182) );
  FD2 R2_reg_0_ ( .D(N14), .CP(clk), .CD(n49), .Q(R2[0]), .QN(n187) );
  FD2 R3_reg ( .D(n197), .CP(clk), .CD(n49), .Q(R3), .QN(n194) );
  FD2 R4_reg_4_ ( .D(N33), .CP(clk), .CD(n49), .Q(R4[4]) );
  FD2 R4_reg_3_ ( .D(N32), .CP(clk), .CD(n49), .Q(R4[3]) );
  FD2 R4_reg_2_ ( .D(N31), .CP(clk), .CD(n49), .Q(R4[2]) );
  FD2 R4_reg_1_ ( .D(N30), .CP(clk), .CD(n49), .Q(R4[1]) );
  FD2 R4_reg_0_ ( .D(N29), .CP(clk), .CD(n49), .Q(R4[0]) );
  IVAP U71 ( .A(n61), .Z(out1[3]) );
  IVI U72 ( .A(n123), .Z(n99) );
  IVDA U73 ( .A(n_rst), .Z(n49) );
  AN2I U74 ( .A(n112), .B(n111), .Z(n50) );
  B2IP U75 ( .A(n109), .Z2(Cout[3]) );
  OR2I U76 ( .A(n129), .B(Cin1[4]), .Z(n131) );
  ENI U79 ( .A(n87), .B(Cin1[0]), .Z(Cout[0]) );
  IVI U80 ( .A(R4[1]), .Z(out2[1]) );
  IVI U81 ( .A(R4[3]), .Z(out2[3]) );
  IVI U82 ( .A(R4[4]), .Z(out2[4]) );
  IVI U83 ( .A(R4[0]), .Z(out2[0]) );
  IVI U84 ( .A(R4[2]), .Z(out2[2]) );
  ND2I U85 ( .A(R2[2]), .B(n183), .Z(n176) );
  ND2I U86 ( .A(R2[1]), .B(n188), .Z(n172) );
  ND2I U87 ( .A(R2[0]), .B(n179), .Z(n173) );
  ND2I U88 ( .A(n172), .B(n173), .Z(n57) );
  ND2I U89 ( .A(R1[1]), .B(n182), .Z(n171) );
  AN2I U90 ( .A(n57), .B(n171), .Z(n178) );
  ND2I U91 ( .A(R1[2]), .B(n184), .Z(n175) );
  ND2I U92 ( .A(n178), .B(n175), .Z(n58) );
  ND2I U93 ( .A(n176), .B(n58), .Z(n60) );
  ND2I U94 ( .A(R1[3]), .B(n185), .Z(n65) );
  ND2I U95 ( .A(R2[3]), .B(n186), .Z(n63) );
  ND2I U96 ( .A(n65), .B(n63), .Z(n59) );
  ENI U97 ( .A(n60), .B(n59), .Z(n61) );
  AN2I U98 ( .A(n175), .B(n65), .Z(n62) );
  ND2I U99 ( .A(n178), .B(n62), .Z(n67) );
  ND2I U100 ( .A(n176), .B(n63), .Z(n64) );
  ND2I U101 ( .A(n65), .B(n64), .Z(n66) );
  ND2I U102 ( .A(n67), .B(n66), .Z(n69) );
  AO2 U103 ( .A(R1[4]), .B(n181), .C(R2[4]), .D(n180), .Z(n68) );
  ENI U104 ( .A(n69), .B(n68), .Z(out1[4]) );
  NR2I U105 ( .A(R1[0]), .B(R2[0]), .Z(n71) );
  IVDA U106 ( .A(R3), .Y(n75) );
  AO4 U107 ( .A(n71), .B(n75), .C(n179), .D(n187), .Z(N29) );
  NR2I U108 ( .A(R1[2]), .B(R2[2]), .Z(n72) );
  EON1 U109 ( .A(n72), .B(n75), .C(R2[2]), .D(R1[2]), .Z(N31) );
  NR2I U110 ( .A(R1[4]), .B(R2[4]), .Z(n73) );
  EON1 U111 ( .A(n73), .B(n75), .C(R2[4]), .D(R1[4]), .Z(N33) );
  NR2I U112 ( .A(R2[3]), .B(R1[3]), .Z(n74) );
  EON1 U113 ( .A(n74), .B(n75), .C(R1[3]), .D(R2[3]), .Z(N32) );
  NR2I U114 ( .A(R1[1]), .B(R2[1]), .Z(n76) );
  EON1 U115 ( .A(n76), .B(n75), .C(R2[1]), .D(R1[1]), .Z(N30) );
  IVDAP U116 ( .A(Cin2[0]), .Y(n87), .Z(n77) );
  AN2I U117 ( .A(Cin1[0]), .B(n77), .Z(n138) );
  ND2I U118 ( .A(Cin2[1]), .B(Cin1[1]), .Z(n81) );
  IVDA U119 ( .A(n81), .Y(n79) );
  IVDA U120 ( .A(Cin1[1]), .Y(n78), .Z(n55) );
  ND2I U121 ( .A(n86), .B(n78), .Z(n82) );
  AO3P U122 ( .A(n138), .B(n79), .C(Cin1[2]), .D(n82), .Z(n113) );
  IVDA U123 ( .A(Cin1[2]), .Y(n80) );
  AN2I U124 ( .A(n81), .B(n80), .Z(n84) );
  ND2I U125 ( .A(n138), .B(n82), .Z(n83) );
  ND2I U126 ( .A(n84), .B(n83), .Z(n94) );
  ND2I U127 ( .A(n113), .B(n94), .Z(n85) );
  IVDA U128 ( .A(Cin2[2]), .Y(n53), .Z(n95) );
  ENI U129 ( .A(n85), .B(n95), .Z(n92) );
  NR2I U130 ( .A(n86), .B(Cin1[1]), .Z(n141) );
  ND2I U131 ( .A(n86), .B(Cin1[1]), .Z(n142) );
  NR2I U132 ( .A(n87), .B(Cin1[0]), .Z(n145) );
  MUX21L U133 ( .A(n141), .B(n142), .S(n145), .Z(n126) );
  NR2I U134 ( .A(n53), .B(Cin1[2]), .Z(n123) );
  ND2I U135 ( .A(n53), .B(Cin1[2]), .Z(n122) );
  ND2I U136 ( .A(n99), .B(n122), .Z(n88) );
  ENI U137 ( .A(n126), .B(n88), .Z(n89) );
  ND2I U138 ( .A(n197), .B(n89), .Z(n90) );
  IVI U139 ( .A(n90), .Z(n91) );
  AO6P U140 ( .A(n168), .B(n92), .C(n91), .Z(n93) );
  B4I U141 ( .A(n93), .Z(Cout[2]) );
  ND2I U142 ( .A(n95), .B(n94), .Z(n111) );
  ND2I U143 ( .A(n113), .B(n111), .Z(n97) );
  ENI U144 ( .A(Cin1[3]), .B(n110), .Z(n96) );
  ENI U145 ( .A(n97), .B(n96), .Z(n98) );
  ND2I U146 ( .A(n168), .B(n98), .Z(n108) );
  ND2I U147 ( .A(n126), .B(n99), .Z(n103) );
  IVDA U148 ( .A(n122), .Y(n101) );
  ND2I U150 ( .A(n101), .B(1'b1), .Z(n102) );
  ND2I U151 ( .A(n103), .B(n102), .Z(n105) );
  IVDA U152 ( .A(Cin1[3]), .Y(n115) );
  ND2I U153 ( .A(Cin2[3]), .B(n115), .Z(n121) );
  IVDA U154 ( .A(Cin2[3]), .Y(n114), .Z(n110) );
  ND2I U155 ( .A(n114), .B(Cin1[3]), .Z(n124) );
  ND2I U156 ( .A(n121), .B(n124), .Z(n104) );
  ENI U157 ( .A(n105), .B(n104), .Z(n106) );
  ND2I U158 ( .A(n106), .B(n197), .Z(n107) );
  ND2I U159 ( .A(n108), .B(n107), .Z(n109) );
  ND2I U160 ( .A(Cin1[3]), .B(n110), .Z(n112) );
  ND2I U161 ( .A(n113), .B(n50), .Z(n117) );
  ND2I U162 ( .A(n115), .B(n114), .Z(n116) );
  ND2I U163 ( .A(n117), .B(n116), .Z(n119) );
  EOI U164 ( .A(Cin1[4]), .B(Cin2[4]), .Z(n118) );
  ENI U165 ( .A(n119), .B(n118), .Z(n120) );
  ND2I U166 ( .A(n120), .B(n168), .Z(n136) );
  IVI U167 ( .A(n121), .Z(n125) );
  MUX21L U168 ( .A(n125), .B(n124), .S(n122), .Z(n128) );
  MUX21L U169 ( .A(n125), .B(n124), .S(n123), .Z(n127) );
  MUX21L U170 ( .A(n128), .B(n127), .S(n126), .Z(n133) );
  IVDA U171 ( .A(Cin2[4]), .Y(n129) );
  ND2I U172 ( .A(n129), .B(Cin1[4]), .Z(n130) );
  AN2I U173 ( .A(n131), .B(n130), .Z(n132) );
  ENI U174 ( .A(n133), .B(n132), .Z(n134) );
  ND2I U175 ( .A(n197), .B(n134), .Z(n135) );
  AN2I U176 ( .A(n136), .B(n135), .Z(n137) );
  B4IP U177 ( .A(n137), .Z(Cout[4]) );
  MUX21L U178 ( .A(n78), .B(n55), .S(n138), .Z(n140) );
  IVDA U179 ( .A(Cin2[1]), .Y(n86), .Z(n139) );
  ENI U180 ( .A(n140), .B(n139), .Z(n148) );
  IVDA U181 ( .A(n141), .Y(n143) );
  ND2I U182 ( .A(n143), .B(n142), .Z(n144) );
  EOI U183 ( .A(n145), .B(n144), .Z(n146) );
  ND2I U184 ( .A(n197), .B(n146), .Z(n147) );
  AO7P U185 ( .A(n197), .B(n148), .C(n147), .Z(n149) );
  B2IP U186 ( .A(n149), .Z2(Cout[1]) );
  ND2I U187 ( .A(data1[0]), .B(n168), .Z(n151) );
  ND2I U188 ( .A(n197), .B(data2[0]), .Z(n150) );
  ND2I U189 ( .A(n151), .B(n150), .Z(N8) );
  ND2I U190 ( .A(data2[0]), .B(n168), .Z(n153) );
  ND2I U191 ( .A(n197), .B(data1[0]), .Z(n152) );
  ND2I U192 ( .A(n153), .B(n152), .Z(N14) );
  ND2I U193 ( .A(data1[1]), .B(n168), .Z(n155) );
  ND2I U194 ( .A(n197), .B(data2[1]), .Z(n154) );
  ND2I U195 ( .A(n155), .B(n154), .Z(N9) );
  ND2I U196 ( .A(data2[1]), .B(n168), .Z(n157) );
  ND2I U197 ( .A(n197), .B(data1[1]), .Z(n156) );
  ND2I U198 ( .A(n157), .B(n156), .Z(N15) );
  ND2I U199 ( .A(data1[2]), .B(n168), .Z(n159) );
  ND2I U200 ( .A(n197), .B(data2[2]), .Z(n158) );
  ND2I U201 ( .A(n159), .B(n158), .Z(N10) );
  ND2I U202 ( .A(data2[2]), .B(n168), .Z(n161) );
  ND2I U203 ( .A(n197), .B(data1[2]), .Z(n160) );
  ND2I U204 ( .A(n161), .B(n160), .Z(N16) );
  ND2I U205 ( .A(data1[3]), .B(n168), .Z(n163) );
  ND2I U206 ( .A(n197), .B(data2[3]), .Z(n162) );
  ND2I U207 ( .A(n163), .B(n162), .Z(N11) );
  ND2I U208 ( .A(n197), .B(data1[3]), .Z(n165) );
  ND2I U209 ( .A(data2[3]), .B(n168), .Z(n164) );
  ND2I U210 ( .A(n165), .B(n164), .Z(N17) );
  ND2I U211 ( .A(n197), .B(data2[4]), .Z(n167) );
  ND2I U212 ( .A(data1[4]), .B(n168), .Z(n166) );
  ND2I U213 ( .A(n167), .B(n166), .Z(N12) );
  ND2I U214 ( .A(n197), .B(data1[4]), .Z(n170) );
  ND2I U215 ( .A(data2[4]), .B(n168), .Z(n169) );
  ND2I U216 ( .A(n170), .B(n169), .Z(N18) );
  ENI U217 ( .A(n179), .B(R2[0]), .Z(out1[0]) );
  ND2I U218 ( .A(n172), .B(n171), .Z(n174) );
  ENI U219 ( .A(n174), .B(n173), .Z(out1[1]) );
  AN2I U220 ( .A(n176), .B(n175), .Z(n177) );
  ENI U221 ( .A(n178), .B(n177), .Z(out1[2]) );
  IVDAP U77 ( .A(sel), .Y(n168), .Z(n197) );
  IVI U78 ( .A(n194), .Z(out3[1]) );
  B2IP U222 ( .A(out3[1]), .Z2(out3[2]) );
  B2IP U223 ( .A(out3[1]), .Z2(out3[3]) );
  B2IP U224 ( .A(out3[1]), .Z2(out3[4]) );
  B2IP U225 ( .A(out3[1]), .Z2(out3[0]) );
endmodule

