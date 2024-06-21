/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-5
// Date      : Tue May 21 21:43:53 2024
/////////////////////////////////////////////////////////////


module top ( clk, n_rst, A, B, c_in, sum, c_out );
  input [15:0] A;
  input [15:0] B;
  output [15:0] sum;
  input clk, n_rst, c_in;
  output c_out;
  wire   c_in_d, sum_d_0_, c_out_d, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204;
  wire   [15:0] A_d;
  wire   [15:0] B_d;

  FD2 A_d_reg_15_ ( .D(A[15]), .CP(clk), .CD(n203), .Q(A_d[15]), .QN(n198) );
  FD2 A_d_reg_14_ ( .D(A[14]), .CP(clk), .CD(n203), .Q(A_d[14]) );
  FD2 A_d_reg_13_ ( .D(A[13]), .CP(clk), .CD(n203), .Q(A_d[13]) );
  FD2 A_d_reg_12_ ( .D(A[12]), .CP(clk), .CD(n203), .Q(A_d[12]) );
  FD2 A_d_reg_11_ ( .D(A[11]), .CP(clk), .CD(n203), .Q(A_d[11]) );
  FD2 A_d_reg_10_ ( .D(A[10]), .CP(clk), .CD(n203), .Q(A_d[10]) );
  FD2 A_d_reg_9_ ( .D(A[9]), .CP(clk), .CD(n203), .Q(A_d[9]) );
  FD2 A_d_reg_8_ ( .D(A[8]), .CP(clk), .CD(n203), .Q(A_d[8]) );
  FD2 A_d_reg_7_ ( .D(A[7]), .CP(clk), .CD(n203), .Q(A_d[7]) );
  FD2 A_d_reg_6_ ( .D(A[6]), .CP(clk), .CD(n203), .Q(A_d[6]) );
  FD2 A_d_reg_5_ ( .D(A[5]), .CP(clk), .CD(n203), .Q(A_d[5]), .QN(n202) );
  FD2 A_d_reg_4_ ( .D(A[4]), .CP(clk), .CD(n203), .Q(A_d[4]) );
  FD2 A_d_reg_3_ ( .D(A[3]), .CP(clk), .CD(n203), .Q(A_d[3]), .QN(n201) );
  FD2 A_d_reg_2_ ( .D(A[2]), .CP(clk), .CD(n203), .Q(A_d[2]) );
  FD2 A_d_reg_1_ ( .D(A[1]), .CP(clk), .CD(n203), .Q(A_d[1]), .QN(n195) );
  FD2 A_d_reg_0_ ( .D(A[0]), .CP(clk), .CD(n203), .Q(A_d[0]) );
  FD2 B_d_reg_15_ ( .D(B[15]), .CP(clk), .CD(n203), .Q(B_d[15]) );
  FD2 B_d_reg_14_ ( .D(B[14]), .CP(clk), .CD(n203), .Q(B_d[14]), .QN(n199) );
  FD2 B_d_reg_13_ ( .D(B[13]), .CP(clk), .CD(n203), .Q(B_d[13]), .QN(n200) );
  FD2 B_d_reg_12_ ( .D(B[12]), .CP(clk), .CD(n203), .Q(B_d[12]), .QN(n196) );
  FD2 B_d_reg_11_ ( .D(B[11]), .CP(clk), .CD(n203), .Q(B_d[11]), .QN(n197) );
  FD2 B_d_reg_10_ ( .D(B[10]), .CP(clk), .CD(n203), .Q(B_d[10]), .QN(n193) );
  FD2 B_d_reg_9_ ( .D(B[9]), .CP(clk), .CD(n203), .Q(B_d[9]), .QN(n194) );
  FD2 B_d_reg_8_ ( .D(B[8]), .CP(clk), .CD(n203), .Q(B_d[8]), .QN(n191) );
  FD2 B_d_reg_7_ ( .D(B[7]), .CP(clk), .CD(n203), .Q(B_d[7]), .QN(n192) );
  FD2 B_d_reg_6_ ( .D(B[6]), .CP(clk), .CD(n203), .Q(B_d[6]) );
  FD2 B_d_reg_5_ ( .D(B[5]), .CP(clk), .CD(n203), .Q(B_d[5]) );
  FD2 B_d_reg_4_ ( .D(B[4]), .CP(clk), .CD(n203), .Q(B_d[4]) );
  FD2 B_d_reg_3_ ( .D(B[3]), .CP(clk), .CD(n203), .Q(B_d[3]) );
  FD2 B_d_reg_2_ ( .D(B[2]), .CP(clk), .CD(n203), .Q(B_d[2]) );
  FD2 B_d_reg_1_ ( .D(B[1]), .CP(clk), .CD(n203), .Q(B_d[1]) );
  FD2 B_d_reg_0_ ( .D(B[0]), .CP(clk), .CD(n203), .Q(B_d[0]), .QN(n204) );
  FD2 c_in_d_reg ( .D(c_in), .CP(clk), .CD(n203), .Q(c_in_d) );
  FD2 sum_dd_reg_15_ ( .D(n94), .CP(clk), .CD(n203), .Q(sum[15]) );
  FD2 sum_dd_reg_14_ ( .D(n95), .CP(clk), .CD(n203), .Q(sum[14]) );
  FD2 sum_dd_reg_13_ ( .D(n96), .CP(clk), .CD(n203), .Q(sum[13]) );
  FD2 sum_dd_reg_12_ ( .D(n97), .CP(clk), .CD(n203), .Q(sum[12]) );
  FD2 sum_dd_reg_11_ ( .D(n98), .CP(clk), .CD(n203), .Q(sum[11]) );
  FD2 sum_dd_reg_10_ ( .D(n99), .CP(clk), .CD(n203), .Q(sum[10]) );
  FD2 sum_dd_reg_9_ ( .D(n100), .CP(clk), .CD(n_rst), .Q(sum[9]) );
  FD2 sum_dd_reg_8_ ( .D(n101), .CP(clk), .CD(n_rst), .Q(sum[8]) );
  FD2 sum_dd_reg_7_ ( .D(n102), .CP(clk), .CD(n_rst), .Q(sum[7]) );
  FD2 sum_dd_reg_6_ ( .D(n103), .CP(clk), .CD(n203), .Q(sum[6]) );
  FD2 sum_dd_reg_5_ ( .D(n104), .CP(clk), .CD(n203), .Q(sum[5]) );
  FD2 sum_dd_reg_4_ ( .D(n105), .CP(clk), .CD(n203), .Q(sum[4]) );
  FD2 sum_dd_reg_3_ ( .D(n106), .CP(clk), .CD(n203), .Q(sum[3]) );
  FD2 sum_dd_reg_2_ ( .D(n107), .CP(clk), .CD(n203), .Q(sum[2]) );
  FD2 sum_dd_reg_1_ ( .D(n108), .CP(clk), .CD(n203), .Q(sum[1]) );
  FD2 sum_dd_reg_0_ ( .D(sum_d_0_), .CP(clk), .CD(n203), .Q(sum[0]) );
  FD2 c_out_dd_reg ( .D(c_out_d), .CP(clk), .CD(n203), .Q(c_out) );
  IVDA U113 ( .A(n_rst), .Z(n203) );
  ND2I U114 ( .A(A_d[15]), .B(B_d[15]), .Z(n140) );
  ENI U115 ( .A(n198), .B(B_d[15]), .Z(n188) );
  ENI U116 ( .A(n199), .B(A_d[14]), .Z(n185) );
  ENI U117 ( .A(n200), .B(A_d[13]), .Z(n182) );
  ENI U118 ( .A(n196), .B(A_d[12]), .Z(n179) );
  ENI U119 ( .A(n197), .B(A_d[11]), .Z(n177) );
  ENI U120 ( .A(n193), .B(A_d[10]), .Z(n174) );
  ENI U121 ( .A(n194), .B(A_d[9]), .Z(n170) );
  ENI U122 ( .A(n191), .B(A_d[8]), .Z(n168) );
  ENI U123 ( .A(n192), .B(A_d[7]), .Z(n166) );
  NR2I U124 ( .A(A_d[5]), .B(B_d[5]), .Z(n109) );
  ENI U125 ( .A(B_d[6]), .B(A_d[6]), .Z(n164) );
  NR2I U126 ( .A(n109), .B(n164), .Z(n120) );
  ND2I U127 ( .A(B_d[4]), .B(A_d[4]), .Z(n158) );
  ND2I U128 ( .A(A_d[5]), .B(B_d[5]), .Z(n163) );
  AN2I U129 ( .A(n158), .B(n163), .Z(n118) );
  NR2I U130 ( .A(A_d[3]), .B(B_d[3]), .Z(n110) );
  ENI U131 ( .A(B_d[4]), .B(A_d[4]), .Z(n156) );
  NR2I U132 ( .A(n110), .B(n156), .Z(n117) );
  ND2I U133 ( .A(B_d[2]), .B(A_d[2]), .Z(n150) );
  ND2I U134 ( .A(A_d[3]), .B(B_d[3]), .Z(n155) );
  AN2I U135 ( .A(n150), .B(n155), .Z(n115) );
  NR2I U136 ( .A(A_d[1]), .B(B_d[1]), .Z(n111) );
  ENI U137 ( .A(B_d[2]), .B(A_d[2]), .Z(n148) );
  NR2I U138 ( .A(n111), .B(n148), .Z(n114) );
  ND2I U139 ( .A(B_d[0]), .B(A_d[0]), .Z(n142) );
  ND2I U140 ( .A(A_d[1]), .B(B_d[1]), .Z(n147) );
  AN2I U141 ( .A(n142), .B(n147), .Z(n112) );
  ENI U142 ( .A(n204), .B(A_d[0]), .Z(n141) );
  ND2I U143 ( .A(n141), .B(c_in_d), .Z(n143) );
  ND2I U144 ( .A(n112), .B(n143), .Z(n113) );
  ND2I U145 ( .A(n114), .B(n113), .Z(n151) );
  ND2I U146 ( .A(n115), .B(n151), .Z(n116) );
  ND2I U147 ( .A(n117), .B(n116), .Z(n159) );
  ND2I U148 ( .A(n118), .B(n159), .Z(n119) );
  ND2I U149 ( .A(n120), .B(n119), .Z(n122) );
  ND2I U150 ( .A(B_d[6]), .B(A_d[6]), .Z(n121) );
  ND2I U151 ( .A(n122), .B(n121), .Z(n167) );
  ND2I U152 ( .A(n166), .B(n167), .Z(n124) );
  ND2I U153 ( .A(B_d[7]), .B(A_d[7]), .Z(n123) );
  ND2I U154 ( .A(n124), .B(n123), .Z(n169) );
  ND2I U155 ( .A(n168), .B(n169), .Z(n126) );
  ND2I U156 ( .A(B_d[8]), .B(A_d[8]), .Z(n125) );
  ND2I U157 ( .A(n126), .B(n125), .Z(n171) );
  ND2I U158 ( .A(n170), .B(n171), .Z(n128) );
  ND2I U159 ( .A(B_d[9]), .B(A_d[9]), .Z(n127) );
  ND2I U160 ( .A(n128), .B(n127), .Z(n172) );
  ND2I U161 ( .A(n174), .B(n172), .Z(n129) );
  ND2I U162 ( .A(B_d[10]), .B(A_d[10]), .Z(n175) );
  ND2I U163 ( .A(n129), .B(n175), .Z(n130) );
  ND2I U164 ( .A(n177), .B(n130), .Z(n132) );
  ND2I U165 ( .A(B_d[11]), .B(A_d[11]), .Z(n131) );
  ND2I U166 ( .A(n132), .B(n131), .Z(n181) );
  ND2I U167 ( .A(n179), .B(n181), .Z(n134) );
  ND2I U168 ( .A(B_d[12]), .B(A_d[12]), .Z(n133) );
  ND2I U169 ( .A(n134), .B(n133), .Z(n184) );
  ND2I U170 ( .A(n182), .B(n184), .Z(n136) );
  ND2I U171 ( .A(B_d[13]), .B(A_d[13]), .Z(n135) );
  ND2I U172 ( .A(n136), .B(n135), .Z(n187) );
  ND2I U173 ( .A(n185), .B(n187), .Z(n138) );
  ND2I U174 ( .A(B_d[14]), .B(A_d[14]), .Z(n137) );
  ND2I U175 ( .A(n138), .B(n137), .Z(n190) );
  ND2I U176 ( .A(n188), .B(n190), .Z(n139) );
  ND2I U177 ( .A(n140), .B(n139), .Z(c_out_d) );
  EOI U178 ( .A(n141), .B(c_in_d), .Z(sum_d_0_) );
  ND2I U179 ( .A(n143), .B(n142), .Z(n144) );
  ENI U180 ( .A(n195), .B(B_d[1]), .Z(n145) );
  EOI U181 ( .A(n144), .B(n145), .Z(n108) );
  ND2I U182 ( .A(n145), .B(n144), .Z(n146) );
  ND2I U183 ( .A(n147), .B(n146), .Z(n149) );
  ENI U184 ( .A(n149), .B(n148), .Z(n107) );
  ND2I U185 ( .A(n151), .B(n150), .Z(n152) );
  ENI U186 ( .A(n201), .B(B_d[3]), .Z(n153) );
  EOI U187 ( .A(n152), .B(n153), .Z(n106) );
  ND2I U188 ( .A(n153), .B(n152), .Z(n154) );
  ND2I U189 ( .A(n155), .B(n154), .Z(n157) );
  ENI U190 ( .A(n157), .B(n156), .Z(n105) );
  ND2I U191 ( .A(n159), .B(n158), .Z(n160) );
  ENI U192 ( .A(n202), .B(B_d[5]), .Z(n161) );
  EOI U193 ( .A(n160), .B(n161), .Z(n104) );
  ND2I U194 ( .A(n161), .B(n160), .Z(n162) );
  ND2I U195 ( .A(n163), .B(n162), .Z(n165) );
  ENI U196 ( .A(n165), .B(n164), .Z(n103) );
  EOI U197 ( .A(n167), .B(n166), .Z(n102) );
  EOI U198 ( .A(n169), .B(n168), .Z(n101) );
  EOI U199 ( .A(n171), .B(n170), .Z(n100) );
  IVDA U200 ( .A(n172), .Z(n173) );
  EOI U201 ( .A(n173), .B(n174), .Z(n99) );
  ND2I U202 ( .A(n174), .B(n173), .Z(n176) );
  ND2I U203 ( .A(n176), .B(n175), .Z(n178) );
  EOI U204 ( .A(n178), .B(n177), .Z(n98) );
  IVDA U205 ( .A(n179), .Y(n180) );
  ENI U206 ( .A(n181), .B(n180), .Z(n97) );
  IVDA U207 ( .A(n182), .Y(n183) );
  ENI U208 ( .A(n184), .B(n183), .Z(n96) );
  IVDA U209 ( .A(n185), .Y(n186) );
  ENI U210 ( .A(n187), .B(n186), .Z(n95) );
  IVDA U211 ( .A(n188), .Y(n189) );
  ENI U212 ( .A(n190), .B(n189), .Z(n94) );
endmodule

