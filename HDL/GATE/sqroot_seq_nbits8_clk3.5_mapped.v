
module sqroot_seq_NBITS8_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n39, n40, n41, n43, n45, n46, n47, n48, n49,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113;

  AOI212 U29 ( .A(n33), .B(n25), .C(n26), .Q(n1) );
  XOR22 U36 ( .A(n6), .B(n93), .Q(DIFF[2]) );
  OAI212 U37 ( .A(n30), .B(n32), .C(n31), .Q(n29) );
  OAI212 U17 ( .A(n24), .B(n20), .C(n21), .Q(n19) );
  CLKIN6 U61 ( .A(n21), .Q(n3) );
  CLKIN6 U62 ( .A(A[5]), .Q(n21) );
  CLKIN6 U63 ( .A(n23), .Q(n18) );
  INV3 U64 ( .A(n31), .Q(n98) );
  NAND24 U65 ( .A(A[2]), .B(n47), .Q(n31) );
  NOR23 U66 ( .A(A[4]), .B(n45), .Q(n23) );
  NAND24 U67 ( .A(n108), .B(n109), .Q(DIFF[1]) );
  NAND24 U68 ( .A(n91), .B(n92), .Q(DIFF[3]) );
  CLKIN8 U69 ( .A(B[3]), .Q(n46) );
  CLKIN6 U70 ( .A(n15), .Q(n86) );
  INV4 U71 ( .A(n22), .Q(n95) );
  NAND22 U72 ( .A(n45), .B(A[4]), .Q(n24) );
  INV3 U73 ( .A(B[4]), .Q(n45) );
  NAND24 U74 ( .A(n96), .B(n97), .Q(DIFF[5]) );
  INV3 U75 ( .A(n3), .Q(n94) );
  NAND22 U76 ( .A(n105), .B(n7), .Q(n109) );
  NAND23 U77 ( .A(n89), .B(n90), .Q(n92) );
  INV3 U78 ( .A(n5), .Q(n90) );
  NAND23 U79 ( .A(n84), .B(n17), .Q(n15) );
  INV3 U80 ( .A(n19), .Q(n17) );
  NAND22 U81 ( .A(n83), .B(n18), .Q(n84) );
  INV3 U82 ( .A(B[6]), .Q(n43) );
  INV3 U83 ( .A(n33), .Q(n32) );
  INV3 U84 ( .A(n29), .Q(n89) );
  INV3 U85 ( .A(n23), .Q(n39) );
  AOI211 U86 ( .A(n19), .B(n11), .C(n12), .Q(n10) );
  NAND22 U87 ( .A(n103), .B(n104), .Q(DIFF[0]) );
  NAND22 U88 ( .A(n106), .B(n102), .Q(n104) );
  NOR23 U89 ( .A(A[1]), .B(n48), .Q(n34) );
  CLKIN6 U90 ( .A(n34), .Q(n111) );
  NAND22 U91 ( .A(n39), .B(n24), .Q(n4) );
  NAND22 U92 ( .A(A[3]), .B(n46), .Q(n28) );
  NAND28 U93 ( .A(n100), .B(n28), .Q(n26) );
  OAI212 U94 ( .A(n9), .B(n110), .C(n10), .Q(n8) );
  INV1 U95 ( .A(n101), .Q(n40) );
  NAND22 U96 ( .A(n110), .B(n113), .Q(n81) );
  NAND26 U97 ( .A(n80), .B(n4), .Q(n82) );
  NAND28 U98 ( .A(n81), .B(n82), .Q(DIFF[4]) );
  CLKIN6 U99 ( .A(n110), .Q(n80) );
  INV3 U100 ( .A(n4), .Q(n113) );
  NOR21 U101 ( .A(A[6]), .B(n43), .Q(n13) );
  NAND21 U102 ( .A(n3), .B(n22), .Q(n96) );
  INV3 U103 ( .A(n1), .Q(n83) );
  NAND22 U104 ( .A(n2), .B(n15), .Q(n87) );
  NAND24 U105 ( .A(n85), .B(n86), .Q(n88) );
  NAND24 U106 ( .A(n87), .B(n88), .Q(DIFF[6]) );
  INV3 U107 ( .A(n2), .Q(n85) );
  INV4 U108 ( .A(n33), .Q(n93) );
  NAND28 U109 ( .A(n112), .B(n35), .Q(n33) );
  NAND22 U110 ( .A(A[0]), .B(n49), .Q(n103) );
  CLKIN3 U111 ( .A(B[0]), .Q(n49) );
  INV1 U112 ( .A(n105), .Q(n36) );
  NAND26 U113 ( .A(n111), .B(n105), .Q(n112) );
  NAND26 U114 ( .A(B[0]), .B(n106), .Q(n105) );
  CLKIN6 U115 ( .A(B[2]), .Q(n47) );
  NAND23 U116 ( .A(A[1]), .B(n48), .Q(n35) );
  NOR23 U117 ( .A(A[3]), .B(n46), .Q(n27) );
  NAND22 U118 ( .A(n29), .B(n5), .Q(n91) );
  CLKIN6 U119 ( .A(A[0]), .Q(n106) );
  INV6 U120 ( .A(n7), .Q(n107) );
  NAND24 U121 ( .A(n94), .B(n95), .Q(n97) );
  NAND24 U122 ( .A(n98), .B(n99), .Q(n100) );
  CLKIN6 U123 ( .A(n27), .Q(n99) );
  XNR21 U124 ( .A(A[7]), .B(n8), .Q(DIFF[7]) );
  NOR23 U125 ( .A(n46), .B(A[3]), .Q(n101) );
  NOR23 U126 ( .A(n101), .B(n30), .Q(n25) );
  NOR23 U127 ( .A(A[2]), .B(n47), .Q(n30) );
  INV2 U128 ( .A(n30), .Q(n41) );
  NAND24 U129 ( .A(n36), .B(n107), .Q(n108) );
  AOI212 U130 ( .A(n33), .B(n25), .C(n26), .Q(n110) );
  INV3 U131 ( .A(n49), .Q(n102) );
  NAND22 U132 ( .A(n41), .B(n31), .Q(n6) );
  NAND21 U133 ( .A(n18), .B(n11), .Q(n9) );
  NAND22 U134 ( .A(n40), .B(n28), .Q(n5) );
  NAND22 U135 ( .A(n11), .B(n14), .Q(n2) );
  INV3 U136 ( .A(n13), .Q(n11) );
  NAND24 U137 ( .A(n111), .B(n35), .Q(n7) );
  INV3 U138 ( .A(n14), .Q(n12) );
  NAND22 U139 ( .A(n43), .B(A[6]), .Q(n14) );
  CLKIN6 U140 ( .A(B[1]), .Q(n48) );
  LOGIC0 U141 ( .Q(n20) );
  OAI212 U142 ( .A(n23), .B(n1), .C(n24), .Q(n22) );
endmodule


module sqroot_seq_NBITS8_DW01_add_3 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n37, n38, n39, n40, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84;

  AOI212 U23 ( .A(n29), .B(n21), .C(n22), .Q(n1) );
  XOR22 U30 ( .A(n28), .B(n6), .Q(SUM[3]) );
  OAI212 U31 ( .A(n26), .B(n28), .C(n27), .Q(n25) );
  OAI212 U38 ( .A(n33), .B(n30), .C(n31), .Q(n29) );
  OAI212 U11 ( .A(n20), .B(n16), .C(n17), .Q(n15) );
  CLKIN6 U51 ( .A(n35), .Q(n3) );
  CLKIN6 U52 ( .A(A[6]), .Q(n16) );
  NAND24 U53 ( .A(n4), .B(n82), .Q(n83) );
  NAND24 U54 ( .A(n76), .B(n77), .Q(SUM[2]) );
  NAND22 U55 ( .A(n74), .B(n7), .Q(n77) );
  NAND22 U56 ( .A(A[4]), .B(B[4]), .Q(n24) );
  NAND23 U57 ( .A(n83), .B(n84), .Q(SUM[5]) );
  NAND22 U58 ( .A(n18), .B(n3), .Q(n72) );
  NAND22 U59 ( .A(n73), .B(n70), .Q(n71) );
  INV3 U60 ( .A(n3), .Q(n73) );
  NAND23 U61 ( .A(A[3]), .B(B[3]), .Q(n27) );
  NOR23 U62 ( .A(B[3]), .B(A[3]), .Q(n26) );
  NAND23 U63 ( .A(n71), .B(n72), .Q(SUM[6]) );
  CLKIN6 U64 ( .A(n18), .Q(n70) );
  NAND22 U65 ( .A(n33), .B(n75), .Q(n76) );
  CLKIN3 U66 ( .A(n7), .Q(n75) );
  NAND26 U67 ( .A(n80), .B(n20), .Q(n18) );
  NOR23 U68 ( .A(n23), .B(n26), .Q(n21) );
  NAND23 U69 ( .A(A[1]), .B(B[1]), .Q(n33) );
  INV3 U70 ( .A(n1), .Q(n82) );
  NAND24 U71 ( .A(A[2]), .B(B[2]), .Q(n31) );
  INV0 U72 ( .A(n33), .Q(n74) );
  BUF6 U73 ( .A(A[0]), .Q(SUM[0]) );
  INV3 U74 ( .A(n30), .Q(n39) );
  NOR21 U75 ( .A(B[1]), .B(A[1]), .Q(n32) );
  NAND24 U76 ( .A(n78), .B(n79), .Q(n80) );
  INV3 U77 ( .A(n19), .Q(n78) );
  INV3 U78 ( .A(n1), .Q(n79) );
  XNR22 U79 ( .A(n5), .B(n25), .Q(SUM[4]) );
  NAND23 U80 ( .A(n39), .B(n31), .Q(n7) );
  NAND22 U81 ( .A(n81), .B(n1), .Q(n84) );
  INV6 U82 ( .A(n29), .Q(n28) );
  NOR24 U83 ( .A(B[4]), .B(A[4]), .Q(n23) );
  NOR24 U84 ( .A(B[2]), .B(A[2]), .Q(n30) );
  INV3 U85 ( .A(n4), .Q(n81) );
  OAI211 U86 ( .A(n27), .B(n23), .C(n24), .Q(n22) );
  INV2 U87 ( .A(n26), .Q(n38) );
  INV2 U88 ( .A(n8), .Q(SUM[1]) );
  NAND21 U89 ( .A(n40), .B(n33), .Q(n8) );
  NAND22 U90 ( .A(n38), .B(n27), .Q(n6) );
  NOR21 U91 ( .A(B[5]), .B(A[5]), .Q(n19) );
  NAND22 U92 ( .A(n37), .B(n24), .Q(n5) );
  INV0 U93 ( .A(n23), .Q(n37) );
  NAND22 U94 ( .A(n78), .B(n20), .Q(n4) );
  INV3 U95 ( .A(n14), .Q(n12) );
  NOR21 U96 ( .A(n16), .B(n19), .Q(n14) );
  NAND22 U97 ( .A(A[5]), .B(B[5]), .Q(n20) );
  XNR21 U98 ( .A(n2), .B(n11), .Q(SUM[7]) );
  NAND22 U99 ( .A(n34), .B(n10), .Q(n2) );
  NAND22 U100 ( .A(A[7]), .B(B[7]), .Q(n10) );
  INV3 U101 ( .A(n16), .Q(n35) );
  INV3 U102 ( .A(n15), .Q(n13) );
  INV2 U103 ( .A(n32), .Q(n40) );
  INV3 U104 ( .A(n9), .Q(n34) );
  NOR20 U105 ( .A(B[7]), .B(A[7]), .Q(n9) );
  LOGIC1 U106 ( .Q(n17) );
  OAI210 U107 ( .A(n12), .B(n1), .C(n13), .Q(n11) );
endmodule


module sqroot_seq_NBITS8_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n9, n12, n13, n14, n16, n17, n19, n21,
         n23, n45, n46, n47;

  XNR22 U22 ( .A(n19), .B(n47), .Q(SUM[2]) );
  NOR22 U35 ( .A(n21), .B(n14), .Q(n13) );
  NAND24 U36 ( .A(A[1]), .B(A[0]), .Q(n21) );
  XNR21 U37 ( .A(A[0]), .B(n23), .Q(SUM[1]) );
  NAND22 U38 ( .A(A[4]), .B(A[5]), .Q(n7) );
  INV3 U39 ( .A(A[4]), .Q(n12) );
  INV3 U40 ( .A(n21), .Q(n47) );
  CLKIN2 U41 ( .A(A[0]), .Q(SUM[0]) );
  NAND22 U42 ( .A(n47), .B(A[2]), .Q(n17) );
  NAND21 U43 ( .A(n3), .B(n13), .Q(n2) );
  NOR21 U44 ( .A(n14), .B(n12), .Q(n45) );
  INV1 U45 ( .A(A[3]), .Q(n16) );
  NAND22 U46 ( .A(n47), .B(n45), .Q(n46) );
  INV2 U47 ( .A(A[2]), .Q(n19) );
  INV2 U48 ( .A(A[1]), .Q(n23) );
  XOR22 U49 ( .A(n16), .B(n17), .Q(SUM[3]) );
  XNR21 U50 ( .A(n12), .B(n13), .Q(SUM[4]) );
  NAND22 U51 ( .A(n13), .B(n6), .Q(n5) );
  XOR22 U52 ( .A(n9), .B(n46), .Q(SUM[5]) );
  CLKIN0 U53 ( .A(A[5]), .Q(n9) );
  NOR21 U54 ( .A(n4), .B(n7), .Q(n3) );
  INV3 U55 ( .A(n7), .Q(n6) );
  XOR21 U56 ( .A(n1), .B(n2), .Q(SUM[7]) );
  XOR21 U57 ( .A(n4), .B(n5), .Q(SUM[6]) );
  INV3 U58 ( .A(A[6]), .Q(n4) );
  INV3 U59 ( .A(A[7]), .Q(n1) );
  NAND22 U60 ( .A(A[2]), .B(A[3]), .Q(n14) );
endmodule


module sqroot_seq_NBITS8_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n35, n36, n37, n38, n39, n40, n41, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96;

  XNR22 U1 ( .A(n3), .B(n12), .Q(DIFF[7]) );
  OAI212 U7 ( .A(n13), .B(n96), .C(n14), .Q(n12) );
  OAI212 U11 ( .A(n21), .B(n17), .C(n18), .Q(n16) );
  XOR22 U16 ( .A(n5), .B(n1), .Q(DIFF[5]) );
  OAI212 U17 ( .A(n96), .B(n20), .C(n21), .Q(n19) );
  NOR24 U20 ( .A(n48), .B(A[5]), .Q(n20) );
  NOR24 U28 ( .A(n49), .B(A[4]), .Q(n24) );
  XOR22 U43 ( .A(n38), .B(n9), .Q(DIFF[1]) );
  AOI212 U44 ( .A(n45), .B(n2), .C(n35), .Q(n33) );
  NOR24 U50 ( .A(n52), .B(A[1]), .Q(n36) );
  NAND28 U65 ( .A(A[3]), .B(n50), .Q(n28) );
  NOR24 U66 ( .A(A[3]), .B(n50), .Q(n27) );
  INV6 U67 ( .A(n36), .Q(n45) );
  INV6 U68 ( .A(n37), .Q(n35) );
  NAND24 U69 ( .A(n87), .B(n25), .Q(n23) );
  INV3 U70 ( .A(n38), .Q(n2) );
  INV3 U71 ( .A(n33), .Q(n93) );
  INV3 U72 ( .A(n30), .Q(n29) );
  INV3 U73 ( .A(n27), .Q(n91) );
  CLKIN6 U74 ( .A(n24), .Q(n85) );
  NOR24 U75 ( .A(n53), .B(A[0]), .Q(n38) );
  NAND22 U76 ( .A(A[5]), .B(n48), .Q(n21) );
  NAND22 U77 ( .A(n88), .B(n29), .Q(n90) );
  NAND22 U78 ( .A(n39), .B(n11), .Q(n3) );
  NAND24 U79 ( .A(n85), .B(n86), .Q(n87) );
  INV6 U80 ( .A(n28), .Q(n86) );
  NAND22 U81 ( .A(n41), .B(n21), .Q(n5) );
  NOR22 U82 ( .A(n17), .B(n20), .Q(n15) );
  INV3 U83 ( .A(n10), .Q(n39) );
  NOR21 U84 ( .A(A[7]), .B(n46), .Q(n10) );
  INV3 U85 ( .A(B[4]), .Q(n49) );
  NOR23 U86 ( .A(n51), .B(A[2]), .Q(n31) );
  NAND22 U87 ( .A(n87), .B(n25), .Q(n84) );
  INV3 U88 ( .A(n15), .Q(n13) );
  INV3 U89 ( .A(B[5]), .Q(n48) );
  AOI212 U90 ( .A(n22), .B(n30), .C(n84), .Q(n1) );
  NAND24 U91 ( .A(n44), .B(n32), .Q(n8) );
  NOR22 U92 ( .A(n24), .B(n27), .Q(n22) );
  NAND26 U93 ( .A(n94), .B(n32), .Q(n30) );
  INV3 U94 ( .A(n7), .Q(n88) );
  NAND22 U95 ( .A(n91), .B(n28), .Q(n7) );
  NAND22 U96 ( .A(n25), .B(n85), .Q(n6) );
  NAND22 U97 ( .A(A[4]), .B(n49), .Q(n25) );
  NAND22 U98 ( .A(n92), .B(n28), .Q(n26) );
  INV2 U99 ( .A(B[3]), .Q(n50) );
  INV2 U100 ( .A(B[2]), .Q(n51) );
  INV1 U101 ( .A(B[0]), .Q(n53) );
  NAND22 U102 ( .A(n7), .B(n30), .Q(n89) );
  NAND22 U103 ( .A(n89), .B(n90), .Q(DIFF[3]) );
  XNR21 U104 ( .A(n53), .B(A[0]), .Q(DIFF[0]) );
  NAND24 U105 ( .A(A[1]), .B(n52), .Q(n37) );
  AOI212 U106 ( .A(n22), .B(n30), .C(n23), .Q(n96) );
  NAND22 U107 ( .A(A[2]), .B(n51), .Q(n32) );
  NAND22 U108 ( .A(n91), .B(n30), .Q(n92) );
  XNR22 U109 ( .A(n6), .B(n26), .Q(DIFF[4]) );
  CLKIN4 U110 ( .A(n31), .Q(n44) );
  NAND24 U111 ( .A(n93), .B(n44), .Q(n94) );
  INV2 U112 ( .A(n20), .Q(n41) );
  INV3 U113 ( .A(n4), .Q(n95) );
  NOR24 U114 ( .A(n47), .B(A[6]), .Q(n17) );
  XOR22 U115 ( .A(n19), .B(n95), .Q(DIFF[6]) );
  INV3 U116 ( .A(B[1]), .Q(n52) );
  NAND22 U117 ( .A(n45), .B(n37), .Q(n9) );
  INV3 U118 ( .A(n17), .Q(n40) );
  NAND22 U119 ( .A(n40), .B(n18), .Q(n4) );
  XOR21 U120 ( .A(n33), .B(n8), .Q(DIFF[2]) );
  INV3 U121 ( .A(B[6]), .Q(n47) );
  INV3 U122 ( .A(B[7]), .Q(n46) );
  NAND22 U123 ( .A(A[7]), .B(n46), .Q(n11) );
  NAND22 U124 ( .A(A[6]), .B(n47), .Q(n18) );
  INV3 U125 ( .A(n16), .Q(n14) );
endmodule


module sqroot_seq_NBITS8_DW01_add_4 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n37, n38, n40, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94;

  OAI212 U4 ( .A(n12), .B(n10), .C(n11), .Q(n9) );
  NOR24 U7 ( .A(A[6]), .B(B[6]), .Q(n10) );
  XNR22 U9 ( .A(n2), .B(n17), .Q(SUM[5]) );
  AOI212 U10 ( .A(n21), .B(n13), .C(n14), .Q(n12) );
  XOR22 U17 ( .A(n20), .B(n3), .Q(SUM[4]) );
  OAI212 U25 ( .A(n22), .B(n24), .C(n23), .Q(n21) );
  AOI212 U31 ( .A(n29), .B(n38), .C(n26), .Q(n24) );
  NOR24 U36 ( .A(B[2]), .B(A[2]), .Q(n27) );
  OAI212 U12 ( .A(n19), .B(n15), .C(n16), .Q(n14) );
  CLKIN6 U52 ( .A(n35), .Q(n2) );
  CLKIN6 U53 ( .A(A[5]), .Q(n15) );
  CLKIN6 U54 ( .A(A[5]), .Q(n76) );
  NAND24 U55 ( .A(n34), .B(n11), .Q(n1) );
  NAND22 U56 ( .A(n38), .B(n28), .Q(n5) );
  INV1 U57 ( .A(n76), .Q(n35) );
  NAND26 U58 ( .A(n74), .B(n75), .Q(SUM[7]) );
  NAND23 U59 ( .A(n82), .B(n31), .Q(n71) );
  NAND23 U60 ( .A(A[3]), .B(B[3]), .Q(n23) );
  NAND24 U61 ( .A(n80), .B(n81), .Q(n82) );
  INV6 U62 ( .A(n33), .Q(n80) );
  INV6 U63 ( .A(n30), .Q(n81) );
  INV3 U64 ( .A(B[4]), .Q(n78) );
  NAND22 U65 ( .A(n85), .B(n86), .Q(SUM[2]) );
  NAND22 U66 ( .A(n83), .B(n84), .Q(n86) );
  NAND22 U67 ( .A(n89), .B(n88), .Q(n92) );
  NAND23 U68 ( .A(n82), .B(n31), .Q(n29) );
  CLKIN6 U69 ( .A(n27), .Q(n38) );
  NAND20 U70 ( .A(n71), .B(n5), .Q(n85) );
  INV0 U71 ( .A(n71), .Q(n83) );
  CLKIN12 U72 ( .A(n77), .Q(n18) );
  NAND21 U73 ( .A(n40), .B(n33), .Q(n7) );
  NOR24 U74 ( .A(n76), .B(n18), .Q(n13) );
  NAND26 U75 ( .A(A[4]), .B(B[4]), .Q(n19) );
  CLKIN12 U76 ( .A(A[4]), .Q(n79) );
  NAND26 U77 ( .A(n94), .B(n19), .Q(n17) );
  NAND24 U78 ( .A(A[7]), .B(n73), .Q(n74) );
  NAND22 U79 ( .A(n72), .B(n9), .Q(n75) );
  INV2 U80 ( .A(A[7]), .Q(n72) );
  INV4 U81 ( .A(n9), .Q(n73) );
  INV6 U82 ( .A(n21), .Q(n20) );
  NAND22 U83 ( .A(n77), .B(n19), .Q(n3) );
  NAND28 U84 ( .A(A[0]), .B(B[0]), .Q(n33) );
  XOR21 U85 ( .A(n33), .B(n6), .Q(SUM[1]) );
  INV2 U86 ( .A(n87), .Q(n90) );
  INV6 U87 ( .A(n28), .Q(n26) );
  NAND28 U88 ( .A(n78), .B(n79), .Q(n77) );
  NOR24 U89 ( .A(B[1]), .B(A[1]), .Q(n30) );
  INV3 U90 ( .A(n5), .Q(n84) );
  AOI210 U91 ( .A(n71), .B(n38), .C(n26), .Q(n87) );
  CLKIN3 U92 ( .A(n4), .Q(n89) );
  NAND24 U93 ( .A(n91), .B(n92), .Q(SUM[3]) );
  NOR24 U94 ( .A(B[3]), .B(A[3]), .Q(n22) );
  INV0 U95 ( .A(n22), .Q(n37) );
  CLKIN3 U96 ( .A(n90), .Q(n88) );
  XOR22 U97 ( .A(n1), .B(n12), .Q(SUM[6]) );
  INV6 U98 ( .A(n20), .Q(n93) );
  NAND21 U99 ( .A(n4), .B(n90), .Q(n91) );
  NAND22 U100 ( .A(n37), .B(n23), .Q(n4) );
  NAND22 U101 ( .A(B[1]), .B(A[1]), .Q(n31) );
  INV6 U102 ( .A(n10), .Q(n34) );
  NAND24 U103 ( .A(n77), .B(n93), .Q(n94) );
  INV1 U104 ( .A(n7), .Q(SUM[0]) );
  NAND22 U105 ( .A(n81), .B(n31), .Q(n6) );
  NAND23 U106 ( .A(A[2]), .B(B[2]), .Q(n28) );
  NAND23 U107 ( .A(A[6]), .B(B[6]), .Q(n11) );
  INV2 U108 ( .A(n32), .Q(n40) );
  LOGIC1 U109 ( .Q(n16) );
  NOR20 U110 ( .A(B[0]), .B(A[0]), .Q(n32) );
endmodule


module sqroot_seq_NBITS8 ( arg, roundup, clk, nRst, start, sqroot, ready );
  input [7:0] arg;
  output [4:0] sqroot;
  input roundup, clk, nRst, start;
  output ready;
  wire   n_Logic0_, n264, n265, N42, N43, N44, N45, N46, N47, N48, N49, n35,
         n36, n37, n38, n39, n85, n86, N72, N71, N70, N69, N68, N67, N66, N65,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n113, n114, n115, n116, n117, n118, n119, n120, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n256, n257,
         n258, n259, n260, n261, n262, n263;
  wire   [2:0] state_reg;
  wire   [7:5] root_reg;
  wire   [6:0] delta_reg;
  wire   [6:0] res_reg;
  wire   [7:0] root_next;
  wire   [6:0] delta_next;
  wire   [7:0] res_next;
  wire   [7:0] fuo_if_res;
  wire   [7:0] fuo_if_root;
  wire   [7:0] fuo_round;

  DFC3 delta_reg_reg_6_ ( .D(delta_next[6]), .C(clk), .RN(nRst), .Q(
        delta_reg[6]), .QN(n35) );
  DFC3 delta_reg_reg_4_ ( .D(delta_next[4]), .C(clk), .RN(nRst), .Q(
        delta_reg[4]), .QN(n37) );
  DFC3 delta_reg_reg_3_ ( .D(delta_next[3]), .C(clk), .RN(nRst), .Q(
        delta_reg[3]), .QN(n38) );
  DFC3 delta_reg_reg_2_ ( .D(delta_next[2]), .C(clk), .RN(nRst), .Q(
        delta_reg[2]), .QN(n39) );
  DFC3 delta_reg_reg_0_ ( .D(delta_next[0]), .C(clk), .RN(nRst), .Q(
        delta_reg[0]), .QN(n263) );
  DFC3 state_reg_reg_0_ ( .D(n86), .C(clk), .RN(nRst), .Q(state_reg[0]) );
  DFC3 delta_reg_reg_1_ ( .D(delta_next[1]), .C(clk), .RN(nRst), .Q(
        delta_reg[1]), .QN(n262) );
  DFC3 state_reg_reg_2_ ( .D(n254), .C(clk), .RN(nRst), .Q(state_reg[2]), .QN(
        n99) );
  DFC3 state_reg_reg_1_ ( .D(n85), .C(clk), .RN(nRst), .Q(state_reg[1]), .QN(
        n89) );
  DFC3 res_reg_reg_4_ ( .D(res_next[4]), .C(clk), .RN(nRst), .Q(res_reg[4]), 
        .QN(n257) );
  DFC3 res_reg_reg_3_ ( .D(n111), .C(clk), .RN(nRst), .Q(res_reg[3]), .QN(n258) );
  DFC3 res_reg_reg_2_ ( .D(n93), .C(clk), .RN(nRst), .Q(res_reg[2]), .QN(n259)
         );
  DFC3 res_reg_reg_1_ ( .D(res_next[1]), .C(clk), .RN(nRst), .Q(res_reg[1]), 
        .QN(n260) );
  DFC3 res_reg_reg_0_ ( .D(res_next[0]), .C(clk), .RN(nRst), .Q(res_reg[0]), 
        .QN(n261) );
  DFC3 root_reg_reg_7_ ( .D(root_next[7]), .C(clk), .RN(nRst), .Q(root_reg[7]), 
        .QN(n90) );
  DFC3 root_reg_reg_6_ ( .D(root_next[6]), .C(clk), .RN(nRst), .Q(root_reg[6])
         );
  DFC3 root_reg_reg_5_ ( .D(root_next[5]), .C(clk), .RN(nRst), .Q(root_reg[5])
         );
  DFC3 root_reg_reg_4_ ( .D(root_next[4]), .C(clk), .RN(nRst), .Q(sqroot[4])
         );
  DFC3 root_reg_reg_3_ ( .D(root_next[3]), .C(clk), .RN(nRst), .Q(sqroot[3])
         );
  DFC3 root_reg_reg_2_ ( .D(n108), .C(clk), .RN(nRst), .Q(sqroot[2]), .QN(n88)
         );
  DFC3 root_reg_reg_1_ ( .D(n92), .C(clk), .RN(nRst), .Q(n264), .QN(n120) );
  DFC3 root_reg_reg_0_ ( .D(n106), .C(clk), .RN(nRst), .Q(n265) );
  sqroot_seq_NBITS8_DW01_sub_2 sub_1_root_sub_0_root_sub_138 ( .A({n94, 
        res_reg[6], n166, res_reg[4:0]}), .B({n_Logic0_, delta_reg[6], 
        n_Logic0_, delta_reg[4:0]}), .CI(n_Logic0_), .DIFF({N72, N71, N70, N69, 
        N68, N67, N66, N65}) );
  sqroot_seq_NBITS8_DW01_add_3 add_139 ( .A({root_reg, sqroot[4:2], n264, n113}), .B({delta_reg[6], n_Logic0_, delta_reg[4], n110, n104, n114, delta_reg[0], 
        n_Logic0_}), .CI(n_Logic0_), .SUM(fuo_if_root) );
  sqroot_seq_NBITS8_DW01_inc_1 add_142 ( .A({root_reg, sqroot[4:2], n264, n116}), .SUM(fuo_round) );
  sqroot_seq_NBITS8_DW01_sub_4 sub_0_root_sub_0_root_sub_138 ( .A({N72, N71, 
        N70, N69, N68, N67, N66, N65}), .B({root_reg, sqroot[4:1], n265}), 
        .CI(n_Logic0_), .DIFF(fuo_if_res) );
  sqroot_seq_NBITS8_DW01_add_4 add_110 ( .A(root_next), .B({n_Logic0_, 
        delta_next[6], n_Logic0_, delta_next[4:0]}), .CI(n_Logic0_), .SUM({N49, 
        N48, N47, N46, N45, N44, N43, N42}) );
  DFC1 res_reg_reg_7_ ( .D(res_next[7]), .C(clk), .RN(nRst), .Q(n94) );
  DFC1 res_reg_reg_5_ ( .D(res_next[5]), .C(clk), .RN(nRst), .Q(n166) );
  DFC1 res_reg_reg_6_ ( .D(n91), .C(clk), .RN(nRst), .Q(res_reg[6]), .QN(n256)
         );
  OAI222 U92 ( .A(n36), .B(n186), .C(n38), .D(n220), .Q(delta_next[3]) );
  INV6 U93 ( .A(n99), .Q(n100) );
  NAND24 U94 ( .A(n172), .B(n221), .Q(res_next[6]) );
  NAND22 U95 ( .A(n98), .B(n242), .Q(n141) );
  CLKIN15 U96 ( .A(n123), .Q(n248) );
  INV6 U97 ( .A(n186), .Q(n198) );
  NAND32 U98 ( .A(n242), .B(n89), .C(n248), .Q(n243) );
  AOI221 U99 ( .A(root_reg[6]), .B(ready), .C(root_reg[7]), .D(n198), .Q(n150)
         );
  INV6 U100 ( .A(n243), .Q(ready) );
  INV3 U101 ( .A(state_reg[1]), .Q(n96) );
  INV6 U102 ( .A(n96), .Q(n98) );
  NAND22 U103 ( .A(fuo_if_res[2]), .B(n174), .Q(n158) );
  NAND33 U104 ( .A(n98), .B(n242), .C(n123), .Q(n186) );
  NAND22 U105 ( .A(n228), .B(n165), .Q(res_next[4]) );
  NAND22 U106 ( .A(fuo_if_res[4]), .B(n174), .Q(n165) );
  OAI210 U107 ( .A(res_next[1]), .B(n225), .C(n224), .Q(n226) );
  INV4 U108 ( .A(N48), .Q(n237) );
  NAND26 U109 ( .A(n134), .B(n133), .Q(root_next[1]) );
  NAND26 U110 ( .A(n144), .B(n143), .Q(root_next[3]) );
  AOI221 U111 ( .A(sqroot[4]), .B(n198), .C(sqroot[3]), .D(ready), .Q(n143) );
  NAND24 U112 ( .A(n193), .B(root_next[5]), .Q(n194) );
  INV4 U113 ( .A(n193), .Q(res_next[5]) );
  NAND23 U114 ( .A(n142), .B(n248), .Q(n191) );
  NAND23 U115 ( .A(n242), .B(n248), .Q(n137) );
  OAI222 U116 ( .A(root_next[3]), .B(n229), .C(n206), .D(n205), .Q(n207) );
  INV6 U117 ( .A(n253), .Q(n229) );
  INV6 U118 ( .A(res_next[7]), .Q(n247) );
  NAND26 U119 ( .A(n175), .B(n95), .Q(res_next[7]) );
  NAND22 U120 ( .A(n93), .B(n204), .Q(n205) );
  INV8 U121 ( .A(n191), .Q(n174) );
  NOR31 U122 ( .A(n137), .B(n98), .C(n88), .Q(n138) );
  NAND22 U123 ( .A(fuo_if_res[3]), .B(n174), .Q(n162) );
  NOR23 U124 ( .A(n117), .B(n118), .Q(n119) );
  INV3 U125 ( .A(res_next[5]), .Q(n117) );
  INV3 U126 ( .A(n120), .Q(sqroot[1]) );
  INV6 U127 ( .A(n136), .Q(n147) );
  NAND26 U128 ( .A(n98), .B(n242), .Q(n192) );
  NOR31 U129 ( .A(n192), .B(n248), .C(n88), .Q(n131) );
  INV3 U130 ( .A(n96), .Q(n97) );
  NOR32 U131 ( .A(n195), .B(root_next[4]), .C(n212), .Q(n196) );
  INV3 U132 ( .A(n199), .Q(n216) );
  NAND28 U133 ( .A(n151), .B(n150), .Q(root_next[6]) );
  NAND23 U134 ( .A(n172), .B(n221), .Q(n91) );
  INV3 U135 ( .A(n201), .Q(n92) );
  CLKIN3 U136 ( .A(n137), .Q(n132) );
  INV3 U137 ( .A(n194), .Q(n212) );
  CLKIN3 U138 ( .A(delta_reg[3]), .Q(n109) );
  INV4 U139 ( .A(n115), .Q(n116) );
  NAND26 U140 ( .A(n146), .B(n145), .Q(root_next[4]) );
  INV6 U141 ( .A(n109), .Q(n110) );
  INV2 U142 ( .A(n141), .Q(n142) );
  INV3 U143 ( .A(n202), .Q(n206) );
  NOR23 U144 ( .A(n102), .B(n200), .Q(n203) );
  OAI210 U145 ( .A(n91), .B(n209), .C(n216), .Q(n218) );
  NAND26 U146 ( .A(n140), .B(n139), .Q(root_next[2]) );
  INV1 U147 ( .A(n115), .Q(n113) );
  OAI2112 U148 ( .A(n259), .B(n176), .C(n159), .D(n158), .Q(n93) );
  AOI221 U149 ( .A(root_reg[5]), .B(ready), .C(root_reg[6]), .D(n198), .Q(n148) );
  NAND22 U150 ( .A(n94), .B(n167), .Q(n95) );
  INV3 U151 ( .A(n167), .Q(n176) );
  CLKIN4 U152 ( .A(res_next[7]), .Q(n122) );
  NOR23 U153 ( .A(n119), .B(n196), .Q(n219) );
  NOR22 U154 ( .A(n101), .B(n92), .Q(n102) );
  OAI2111 U155 ( .A(n101), .B(N43), .C(N42), .D(n223), .Q(n224) );
  NAND23 U156 ( .A(n97), .B(state_reg[2]), .Q(n185) );
  INV6 U157 ( .A(res_next[1]), .Q(n101) );
  INV6 U158 ( .A(n262), .Q(n114) );
  NAND21 U159 ( .A(n185), .B(n248), .Q(n220) );
  NAND21 U160 ( .A(n248), .B(n182), .Q(n183) );
  NAND21 U161 ( .A(n185), .B(n248), .Q(n177) );
  NAND22 U162 ( .A(n185), .B(n248), .Q(n180) );
  NOR31 U163 ( .A(n98), .B(n123), .C(n242), .Q(n129) );
  INV1 U164 ( .A(root_next[6]), .Q(n209) );
  NAND24 U165 ( .A(fuo_if_res[6]), .B(n174), .Q(n172) );
  INV1 U166 ( .A(n192), .Q(n127) );
  OAI221 U167 ( .A(fuo_round[0]), .B(n242), .C(n100), .D(sqroot[0]), .Q(n124)
         );
  OAI210 U168 ( .A(start), .B(n243), .C(n242), .Q(n244) );
  CLKIN12 U169 ( .A(state_reg[2]), .Q(n242) );
  CLKIN4 U170 ( .A(delta_reg[2]), .Q(n103) );
  INV6 U171 ( .A(n103), .Q(n104) );
  INV0 U172 ( .A(root_next[0]), .Q(n105) );
  INV3 U173 ( .A(n105), .Q(n106) );
  NAND26 U174 ( .A(n149), .B(n148), .Q(root_next[5]) );
  INV6 U175 ( .A(n128), .Q(root_next[0]) );
  INV6 U176 ( .A(res_next[2]), .Q(n227) );
  INV6 U177 ( .A(N47), .Q(n238) );
  INV0 U178 ( .A(n114), .Q(n107) );
  BUF2 U179 ( .A(root_next[2]), .Q(n108) );
  INV0 U180 ( .A(n229), .Q(n111) );
  AOI2112 U181 ( .A(n92), .B(n101), .C(n106), .D(n223), .Q(n200) );
  INV1 U182 ( .A(n115), .Q(sqroot[0]) );
  INV0 U183 ( .A(root_next[1]), .Q(n201) );
  CLKIN6 U184 ( .A(n265), .Q(n115) );
  AOI222 U185 ( .A(N45), .B(n222), .C(N44), .D(n227), .Q(n232) );
  INV3 U186 ( .A(n197), .Q(n118) );
  INV0 U187 ( .A(root_next[5]), .Q(n197) );
  NAND31 U188 ( .A(n123), .B(n89), .C(n242), .Q(n190) );
  NOR20 U189 ( .A(n123), .B(n141), .Q(n135) );
  AOI312 U190 ( .A(sqroot[1]), .B(n89), .C(n132), .D(n131), .Q(n133) );
  OAI2110 U191 ( .A(n245), .B(n192), .C(n191), .D(n190), .Q(n85) );
  OAI2111 U192 ( .A(n261), .B(n176), .C(n155), .D(n154), .Q(res_next[0]) );
  AOI220 U193 ( .A(fuo_round[7]), .B(n147), .C(fuo_if_root[7]), .D(n174), .Q(
        n152) );
  NOR31 U194 ( .A(n100), .B(n123), .C(n89), .Q(n130) );
  LOGIC0 U195 ( .Q(n_Logic0_) );
  LOGIC1 U196 ( .Q(n36) );
  AOI221 U197 ( .A(sqroot[4]), .B(ready), .C(root_reg[5]), .D(n198), .Q(n145)
         );
  INV0 U198 ( .A(root_next[4]), .Q(n210) );
  NAND20 U199 ( .A(root_next[3]), .B(n222), .Q(n202) );
  AOI310 U200 ( .A(n123), .B(n98), .C(n245), .D(n244), .Q(n246) );
  NAND21 U201 ( .A(fuo_if_root[0]), .B(n98), .Q(n125) );
  NOR32 U202 ( .A(n213), .B(n212), .C(n211), .Q(n214) );
  NOR40 U203 ( .A(delta_next[3]), .B(delta_next[2]), .C(delta_next[1]), .D(
        delta_next[0]), .Q(n188) );
  AOI211 U204 ( .A(N48), .B(n221), .C(n248), .Q(n252) );
  NAND31 U205 ( .A(n89), .B(n248), .C(n100), .Q(n136) );
  CLKBU15 U206 ( .A(state_reg[0]), .Q(n123) );
  NAND22 U207 ( .A(n89), .B(n248), .Q(n153) );
  OAI222 U208 ( .A(n137), .B(n125), .C(n124), .D(n153), .Q(n126) );
  AOI312 U209 ( .A(sqroot[1]), .B(n123), .C(n127), .D(n126), .Q(n128) );
  AOI222 U210 ( .A(fuo_if_root[1]), .B(n130), .C(fuo_round[1]), .D(n129), .Q(
        n134) );
  AOI222 U211 ( .A(sqroot[3]), .B(n198), .C(fuo_if_root[2]), .D(n135), .Q(n140) );
  AOI212 U212 ( .A(fuo_round[2]), .B(n147), .C(n138), .Q(n139) );
  AOI222 U213 ( .A(fuo_if_root[3]), .B(n174), .C(fuo_round[3]), .D(n147), .Q(
        n144) );
  AOI222 U214 ( .A(fuo_round[4]), .B(n147), .C(fuo_if_root[4]), .D(n174), .Q(
        n146) );
  AOI222 U215 ( .A(fuo_round[5]), .B(n147), .C(fuo_if_root[5]), .D(n174), .Q(
        n149) );
  AOI222 U216 ( .A(fuo_round[6]), .B(n147), .C(fuo_if_root[6]), .D(n174), .Q(
        n151) );
  OAI212 U217 ( .A(n243), .B(n90), .C(n152), .Q(root_next[7]) );
  NAND22 U218 ( .A(n153), .B(n186), .Q(n167) );
  CLKIN3 U219 ( .A(n190), .Q(n173) );
  NAND22 U220 ( .A(arg[0]), .B(n173), .Q(n155) );
  NAND22 U221 ( .A(fuo_if_res[0]), .B(n174), .Q(n154) );
  NAND22 U222 ( .A(arg[1]), .B(n173), .Q(n157) );
  NAND22 U223 ( .A(fuo_if_res[1]), .B(n174), .Q(n156) );
  OAI2112 U224 ( .A(n260), .B(n176), .C(n156), .D(n157), .Q(res_next[1]) );
  NAND22 U225 ( .A(arg[2]), .B(n173), .Q(n159) );
  OAI2112 U226 ( .A(n259), .B(n176), .C(n159), .D(n158), .Q(res_next[2]) );
  NAND22 U227 ( .A(arg[3]), .B(n173), .Q(n160) );
  OAI212 U228 ( .A(n258), .B(n176), .C(n160), .Q(n161) );
  CLKIN3 U229 ( .A(n161), .Q(n222) );
  NAND22 U230 ( .A(n222), .B(n162), .Q(n253) );
  NAND22 U231 ( .A(arg[4]), .B(n173), .Q(n163) );
  OAI212 U232 ( .A(n257), .B(n176), .C(n163), .Q(n164) );
  CLKIN3 U233 ( .A(n164), .Q(n228) );
  NAND22 U234 ( .A(n167), .B(n166), .Q(n233) );
  CLKIN3 U235 ( .A(n233), .Q(n169) );
  NAND22 U236 ( .A(arg[5]), .B(n173), .Q(n234) );
  CLKIN3 U237 ( .A(n234), .Q(n168) );
  AOI2112 U238 ( .A(fuo_if_res[5]), .B(n174), .C(n169), .D(n168), .Q(n193) );
  NAND22 U239 ( .A(arg[6]), .B(n173), .Q(n170) );
  OAI212 U240 ( .A(n256), .B(n176), .C(n170), .Q(n171) );
  CLKIN3 U241 ( .A(n171), .Q(n221) );
  AOI222 U242 ( .A(fuo_if_res[7]), .B(n174), .C(arg[7]), .D(n173), .Q(n175) );
  CLKIN3 U243 ( .A(n39), .Q(n182) );
  NAND22 U244 ( .A(n123), .B(n182), .Q(n178) );
  OAI222 U245 ( .A(n192), .B(n178), .C(n263), .D(n177), .Q(delta_next[0]) );
  CLKIN3 U246 ( .A(n38), .Q(n179) );
  NAND22 U247 ( .A(n123), .B(n179), .Q(n181) );
  OAI222 U248 ( .A(n192), .B(n181), .C(n107), .D(n180), .Q(delta_next[1]) );
  CLKIN3 U249 ( .A(n185), .Q(n184) );
  OAI222 U250 ( .A(n37), .B(n186), .C(n184), .D(n183), .Q(delta_next[2]) );
  OAI222 U251 ( .A(n35), .B(n186), .C(n37), .D(n220), .Q(delta_next[4]) );
  OAI212 U252 ( .A(n35), .B(n220), .C(n190), .Q(delta_next[6]) );
  CLKIN3 U253 ( .A(delta_next[4]), .Q(n187) );
  NAND22 U254 ( .A(n188), .B(n187), .Q(n189) );
  CLKIN3 U255 ( .A(n189), .Q(n245) );
  CLKIN3 U256 ( .A(res_next[4]), .Q(n195) );
  NAND33 U257 ( .A(roundup), .B(n245), .C(n198), .Q(n199) );
  OAI212 U258 ( .A(root_next[6]), .B(n221), .C(n247), .Q(n215) );
  CLKIN3 U259 ( .A(res_next[0]), .Q(n223) );
  AOI2112 U260 ( .A(n108), .B(n227), .C(n203), .D(n206), .Q(n208) );
  CLKIN3 U261 ( .A(n108), .Q(n204) );
  OAI222 U262 ( .A(res_next[6]), .B(n209), .C(n208), .D(n207), .Q(n213) );
  OAI212 U263 ( .A(res_next[4]), .B(n210), .C(n216), .Q(n211) );
  AOI212 U264 ( .A(n216), .B(n215), .C(n214), .Q(n217) );
  OAI212 U265 ( .A(n219), .B(n218), .C(n217), .Q(n254) );
  NAND22 U266 ( .A(N49), .B(n122), .Q(n251) );
  CLKIN3 U267 ( .A(N43), .Q(n225) );
  OAI212 U268 ( .A(N44), .B(n227), .C(n226), .Q(n231) );
  OAI222 U269 ( .A(N45), .B(n229), .C(N46), .D(n228), .Q(n230) );
  AOI212 U270 ( .A(n232), .B(n231), .C(n230), .Q(n241) );
  CLKIN3 U271 ( .A(N46), .Q(n236) );
  NAND22 U272 ( .A(n234), .B(n233), .Q(n235) );
  OAI222 U273 ( .A(res_next[4]), .B(n236), .C(n238), .D(n235), .Q(n240) );
  AOI222 U274 ( .A(n238), .B(res_next[5]), .C(n91), .D(n237), .Q(n239) );
  OAI212 U275 ( .A(n241), .B(n240), .C(n239), .Q(n250) );
  OAI312 U276 ( .A(n248), .B(N49), .C(n122), .D(n246), .Q(n249) );
  AOI312 U277 ( .A(n252), .B(n251), .C(n250), .D(n249), .Q(n86) );
endmodule

