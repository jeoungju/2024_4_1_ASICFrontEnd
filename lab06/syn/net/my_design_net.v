/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP5-5
// Date      : Thu Apr 25 01:32:11 2024
/////////////////////////////////////////////////////////////


module combo ( Cin1, sel, Cin2, Cout );
  input [4:0] Cin1;
  input [4:0] Cin2;
  output [4:0] Cout;
  input sel;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87;

  MUX21LP U1 ( .A(n2), .B(n3), .S(sel), .Z(n1) );
  B4IP U2 ( .A(n1), .Z(Cout[1]) );
  EOI U3 ( .A(n34), .B(n42), .Z(n2) );
  EOI U4 ( .A(n25), .B(n34), .Z(n3) );
  MUX21LP U5 ( .A(n5), .B(n6), .S(sel), .Z(n4) );
  B4IP U6 ( .A(n4), .Z(Cout[2]) );
  EOI U7 ( .A(n35), .B(n36), .Z(n5) );
  EOI U8 ( .A(n41), .B(n40), .Z(n6) );
  AN2I U9 ( .A(n80), .B(n66), .Z(n7) );
  AN2I U10 ( .A(n77), .B(n76), .Z(n8) );
  AN2I U11 ( .A(n64), .B(n63), .Z(n9) );
  IVI U12 ( .A(n56), .Z(n10) );
  ENI U13 ( .A(n23), .B(Cin2[2]), .Z(n36) );
  IVI U14 ( .A(n37), .Z(n11) );
  IVI U15 ( .A(n11), .Z(n12) );
  IVI U16 ( .A(n14), .Z(n34) );
  IVI U17 ( .A(n39), .Z(n13) );
  ENI U18 ( .A(n12), .B(n26), .Z(n14) );
  ND2I U19 ( .A(n32), .B(n15), .Z(n68) );
  AN2I U20 ( .A(n18), .B(n7), .Z(n15) );
  IVI U21 ( .A(n38), .Z(n16) );
  ND2I U22 ( .A(n16), .B(n50), .Z(n17) );
  AO3 U23 ( .A(n10), .B(n54), .C(n53), .D(n52), .Z(n18) );
  ND2I U24 ( .A(n32), .B(n18), .Z(n19) );
  ND2I U25 ( .A(n26), .B(n12), .Z(n20) );
  ND2I U26 ( .A(n49), .B(n48), .Z(n21) );
  ND2I U27 ( .A(n22), .B(n23), .Z(n24) );
  ND2I U28 ( .A(n24), .B(n54), .Z(n48) );
  IVI U29 ( .A(n47), .Z(n22) );
  IVI U30 ( .A(n46), .Z(n23) );
  IVI U31 ( .A(n51), .Z(n25) );
  IVI U32 ( .A(n39), .Z(n26) );
  ND2I U33 ( .A(n80), .B(n27), .Z(n29) );
  AN2I U34 ( .A(n75), .B(n73), .Z(n27) );
  IVI U35 ( .A(n83), .Z(n28) );
  ND2I U36 ( .A(n29), .B(n30), .Z(n85) );
  NR2I U37 ( .A(n8), .B(n28), .Z(n30) );
  ND2I U38 ( .A(n45), .B(n44), .Z(n31) );
  OR2I U39 ( .A(Cin2[2]), .B(n56), .Z(n32) );
  ND2I U40 ( .A(n32), .B(n55), .Z(n67) );
  MUX21LP U41 ( .A(n59), .B(n58), .S(sel), .Z(Cout[3]) );
  AO3P U42 ( .A(n10), .B(n54), .C(n17), .D(n52), .Z(n55) );
  IVI U43 ( .A(Cin1[0]), .Z(n33) );
  ND2I U44 ( .A(Cin2[0]), .B(n33), .Z(n38) );
  AO7 U45 ( .A(Cin2[0]), .B(n33), .C(n25), .Z(Cout[0]) );
  IVI U46 ( .A(Cin1[1]), .Z(n37) );
  ND2I U47 ( .A(Cin1[0]), .B(Cin2[0]), .Z(n42) );
  IVI U48 ( .A(Cin2[1]), .Z(n39) );
  ND2I U49 ( .A(n37), .B(n39), .Z(n44) );
  ND2I U50 ( .A(n44), .B(n45), .Z(n35) );
  IVI U51 ( .A(Cin1[2]), .Z(n56) );
  IVI U52 ( .A(n36), .Z(n41) );
  ND2I U53 ( .A(n13), .B(n37), .Z(n52) );
  IVI U54 ( .A(n38), .Z(n51) );
  ND2I U55 ( .A(Cin1[1]), .B(n39), .Z(n50) );
  ND2I U56 ( .A(n20), .B(n53), .Z(n40) );
  ND2I U57 ( .A(Cin1[1]), .B(Cin2[1]), .Z(n43) );
  ND2I U58 ( .A(n43), .B(n42), .Z(n45) );
  ND2I U59 ( .A(n45), .B(n44), .Z(n47) );
  IVI U60 ( .A(Cin1[2]), .Z(n46) );
  ND2I U61 ( .A(n31), .B(n46), .Z(n49) );
  ND2I U62 ( .A(n49), .B(n48), .Z(n81) );
  IVI U63 ( .A(Cin1[3]), .Z(n72) );
  EOI U64 ( .A(n72), .B(Cin2[3]), .Z(n57) );
  ENI U65 ( .A(n81), .B(n57), .Z(n59) );
  IVI U66 ( .A(Cin2[2]), .Z(n54) );
  ND2I U67 ( .A(n51), .B(n50), .Z(n53) );
  ENI U68 ( .A(n19), .B(n57), .Z(n58) );
  ND2I U69 ( .A(Cin2[3]), .B(n72), .Z(n62) );
  IVI U70 ( .A(n62), .Z(n61) );
  ENI U71 ( .A(Cin2[4]), .B(Cin1[4]), .Z(n80) );
  IVI U72 ( .A(n80), .Z(n74) );
  ND2I U73 ( .A(n74), .B(n67), .Z(n60) );
  NR2I U74 ( .A(n61), .B(n60), .Z(n65) );
  IVI U75 ( .A(Cin2[3]), .Z(n71) );
  ND2I U76 ( .A(Cin1[3]), .B(n71), .Z(n66) );
  ND2I U77 ( .A(n74), .B(n66), .Z(n64) );
  ND2I U78 ( .A(n80), .B(n62), .Z(n63) );
  NR2I U79 ( .A(n65), .B(n9), .Z(n69) );
  ND2I U80 ( .A(n69), .B(n68), .Z(n70) );
  ND2I U81 ( .A(sel), .B(n70), .Z(n87) );
  ND2I U82 ( .A(n72), .B(n71), .Z(n75) );
  IVI U83 ( .A(n81), .Z(n73) );
  ND2I U84 ( .A(n75), .B(n74), .Z(n77) );
  ND2I U85 ( .A(Cin2[3]), .B(Cin1[3]), .Z(n78) );
  ND2I U86 ( .A(n80), .B(n78), .Z(n76) );
  IVI U87 ( .A(n78), .Z(n79) );
  NR2I U88 ( .A(n80), .B(n79), .Z(n82) );
  ND2I U89 ( .A(n82), .B(n21), .Z(n83) );
  IVI U90 ( .A(sel), .Z(n84) );
  ND2I U91 ( .A(n85), .B(n84), .Z(n86) );
  ND2I U92 ( .A(n87), .B(n86), .Z(Cout[4]) );
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
  wire   n118, n119, n120, N8, N9, N10, N11, N12, N14, N15, N16, N17, N18, R3,
         N29, N30, N31, N32, N33, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, \out3[1] , n43, n44, n45, n46,
         n49, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n67, n69, n71, n73, n75, \out3[3] , n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117;
  wire   [4:0] R1;
  wire   [4:0] R2;
  assign out3[2] = \out3[1] ;
  assign out3[1] = \out3[1] ;
  assign out3[0] = \out3[3] ;
  assign out3[4] = \out3[3] ;
  assign out3[3] = \out3[3] ;

  FD2 \R1_reg[4]  ( .D(N12), .CP(clk), .CD(n34), .Q(R1[4]), .QN(n26) );
  FD2 \R1_reg[3]  ( .D(N11), .CP(clk), .CD(n34), .Q(R1[3]), .QN(n40) );
  FD2 \R1_reg[2]  ( .D(N10), .CP(clk), .CD(n34), .Q(R1[2]), .QN(n46) );
  FD2 \R2_reg[4]  ( .D(N18), .CP(clk), .CD(n34), .Q(R2[4]) );
  FD2 \R4_reg[4]  ( .D(N33), .CP(clk), .CD(n34), .Q(n71) );
  FD2 \R4_reg[3]  ( .D(N32), .CP(clk), .CD(n34), .Q(n69) );
  FD2 \R4_reg[2]  ( .D(N31), .CP(clk), .CD(n34), .Q(n67) );
  FD2 \R4_reg[1]  ( .D(N30), .CP(clk), .CD(n34), .Q(n65) );
  FD2 \R4_reg[0]  ( .D(N29), .CP(clk), .CD(n34), .Q(n63) );
  combo u_combo ( .Cin1(Cin1), .sel(n77), .Cin2(Cin2), .Cout({n119, Cout[3:1], 
        n120}) );
  FD2 \R2_reg[2]  ( .D(N16), .CP(clk), .CD(n34), .Q(R2[2]), .QN(n89) );
  FD2 \R1_reg[1]  ( .D(N9), .CP(clk), .CD(n34), .Q(R1[1]), .QN(n57) );
  FD2 \R2_reg[0]  ( .D(N14), .CP(clk), .CD(n34), .Q(R2[0]), .QN(n54) );
  FD2 \R2_reg[1]  ( .D(N15), .CP(clk), .CD(n34), .Q(n45), .QN(n58) );
  FD2 \R1_reg[0]  ( .D(N8), .CP(clk), .CD(n34), .Q(n56), .QN(n97) );
  FD2 R3_reg ( .D(n78), .CP(clk), .CD(n34), .Q(R3), .QN(n44) );
  FD2 \R2_reg[3]  ( .D(N17), .CP(clk), .CD(n34), .Q(R2[3]), .QN(n114) );
  AO7P U35 ( .A(n55), .B(n25), .C(n39), .Z(n118) );
  IVI U36 ( .A(n41), .Z(n25) );
  B4I U37 ( .A(n28), .Z(n59) );
  IVAP U38 ( .A(n75), .Z(\out3[1] ) );
  IVI U39 ( .A(n89), .Z(n27) );
  ENI U40 ( .A(n29), .B(n105), .Z(n28) );
  ENI U41 ( .A(R2[2]), .B(n99), .Z(n29) );
  IVI U42 ( .A(n107), .Z(n30) );
  ENI U43 ( .A(n36), .B(n32), .Z(n31) );
  B4IP U44 ( .A(n31), .Z(out1[3]) );
  ENI U45 ( .A(R2[3]), .B(R1[3]), .Z(n32) );
  IVDA U46 ( .A(n_rst), .Y(n33) );
  IVDA U47 ( .A(n33), .Y(n34) );
  ND2I U48 ( .A(n105), .B(n108), .Z(n35) );
  ND2I U49 ( .A(n111), .B(n35), .Z(n36) );
  IVI U50 ( .A(n38), .Z(n37) );
  IVI U51 ( .A(n45), .Z(n38) );
  ND2I U52 ( .A(R2[0]), .B(n97), .Z(n39) );
  IVI U53 ( .A(n97), .Z(n41) );
  IVI U54 ( .A(R3), .Z(n43) );
  OR2I U55 ( .A(n46), .B(R2[2]), .Z(n111) );
  ENI U56 ( .A(n98), .B(n60), .Z(out1[1]) );
  EON1 U57 ( .A(n44), .B(n96), .C(R1[4]), .D(R2[4]), .Z(N33) );
  B2I U58 ( .A(sel), .Z2(n78) );
  B4I U59 ( .A(n119), .Z(n49) );
  B4IP U60 ( .A(n49), .Z(Cout[4]) );
  IVI U61 ( .A(n120), .Z(n51) );
  B4IP U62 ( .A(n51), .Z(Cout[0]) );
  IVI U63 ( .A(n56), .Z(n53) );
  IVI U64 ( .A(n54), .Z(n55) );
  B4IP U65 ( .A(n59), .Z(out1[2]) );
  ENI U66 ( .A(R1[1]), .B(n37), .Z(n60) );
  ENI U67 ( .A(n117), .B(n62), .Z(n61) );
  B4IP U68 ( .A(n61), .Z(out1[4]) );
  EOI U69 ( .A(n26), .B(R2[4]), .Z(n62) );
  B5IP U70 ( .A(n63), .Z(out2[0]) );
  B5IP U71 ( .A(n65), .Z(out2[1]) );
  B5IP U72 ( .A(n67), .Z(out2[2]) );
  B5IP U73 ( .A(n69), .Z(out2[3]) );
  B5IP U74 ( .A(n71), .Z(out2[4]) );
  IVI U75 ( .A(n118), .Z(n73) );
  B4IP U76 ( .A(n73), .Z(out1[0]) );
  IVI U77 ( .A(R3), .Z(n75) );
  B4IP U78 ( .A(n43), .Z(\out3[3] ) );
  B2IP U79 ( .A(sel), .Z2(n77) );
  IVI U80 ( .A(data1[0]), .Z(n79) );
  IVI U81 ( .A(data2[0]), .Z(n80) );
  MUX21L U82 ( .A(n79), .B(n80), .S(n77), .Z(N8) );
  MUX21L U83 ( .A(n80), .B(n79), .S(n77), .Z(N14) );
  ND2I U84 ( .A(n97), .B(n54), .Z(n81) );
  ND2I U85 ( .A(n81), .B(R3), .Z(n83) );
  ND2I U86 ( .A(n55), .B(n41), .Z(n82) );
  ND2I U87 ( .A(n83), .B(n82), .Z(N29) );
  IVI U88 ( .A(data2[1]), .Z(n84) );
  IVI U89 ( .A(data1[1]), .Z(n85) );
  MUX21L U90 ( .A(n84), .B(n85), .S(n77), .Z(N15) );
  MUX21L U91 ( .A(n85), .B(n84), .S(n78), .Z(N9) );
  NR2I U92 ( .A(R1[1]), .B(n37), .Z(n86) );
  AO4 U93 ( .A(n44), .B(n86), .C(n57), .D(n38), .Z(N30) );
  IVI U94 ( .A(data1[2]), .Z(n87) );
  IVI U95 ( .A(data2[2]), .Z(n88) );
  MUX21L U96 ( .A(n87), .B(n88), .S(n78), .Z(N10) );
  MUX21L U97 ( .A(n88), .B(n87), .S(n78), .Z(N16) );
  NR2I U98 ( .A(n27), .B(n30), .Z(n90) );
  IVI U99 ( .A(R1[2]), .Z(n99) );
  AO4 U100 ( .A(n44), .B(n90), .C(n89), .D(n99), .Z(N31) );
  IVI U101 ( .A(data1[3]), .Z(n91) );
  IVI U102 ( .A(data2[3]), .Z(n92) );
  MUX21L U103 ( .A(n91), .B(n92), .S(n78), .Z(N11) );
  MUX21L U104 ( .A(n92), .B(n91), .S(n78), .Z(N17) );
  NR2I U105 ( .A(R2[3]), .B(R1[3]), .Z(n93) );
  AO4 U106 ( .A(n44), .B(n93), .C(n114), .D(n40), .Z(N32) );
  IVI U107 ( .A(data1[4]), .Z(n94) );
  IVI U108 ( .A(data2[4]), .Z(n95) );
  MUX21L U109 ( .A(n94), .B(n95), .S(n78), .Z(N12) );
  MUX21L U110 ( .A(n95), .B(n94), .S(n78), .Z(N18) );
  NR2I U111 ( .A(R2[4]), .B(R1[4]), .Z(n96) );
  ND2I U112 ( .A(R2[0]), .B(n53), .Z(n100) );
  IVI U113 ( .A(n39), .Z(n98) );
  ND2I U114 ( .A(n45), .B(n57), .Z(n104) );
  IVI U115 ( .A(n100), .Z(n102) );
  ND2I U116 ( .A(R1[1]), .B(n58), .Z(n101) );
  ND2I U117 ( .A(n102), .B(n101), .Z(n103) );
  ND2I U118 ( .A(n104), .B(n103), .Z(n106) );
  IVI U119 ( .A(n106), .Z(n105) );
  IVI U120 ( .A(n106), .Z(n109) );
  IVI U121 ( .A(R1[2]), .Z(n107) );
  ND2I U122 ( .A(R2[2]), .B(n107), .Z(n108) );
  ND2I U123 ( .A(n109), .B(n108), .Z(n110) );
  ND2I U124 ( .A(n111), .B(n110), .Z(n112) );
  ND2I U125 ( .A(R2[3]), .B(n40), .Z(n113) );
  ND2I U126 ( .A(n113), .B(n112), .Z(n116) );
  ND2I U127 ( .A(R1[3]), .B(n114), .Z(n115) );
  ND2I U128 ( .A(n116), .B(n115), .Z(n117) );
endmodule

