
module sqroot_seq_NBITS16_DW01_add_3 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n28, n29, n30, n31,
         n32, n33, n34, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n52, n53, n54, n55, n56, n57, n60, n61, n62, n64, n65, n66,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n80, n81, n82, n83,
         n84, n85, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n113, n114, n115, n117, n118, n119, n121, n122, n123, n124, n178,
         n179, n180, n181, n183, n184;

  AOI212 U36 ( .A(n55), .B(n42), .C(n43), .Q(n41) );
  OAI212 U46 ( .A(n49), .B(n57), .C(n52), .Q(n48) );
  XOR22 U53 ( .A(n7), .B(n62), .Q(SUM[10]) );
  OAI212 U60 ( .A(n66), .B(n60), .C(n61), .Q(n55) );
  XOR22 U73 ( .A(n9), .B(n74), .Q(SUM[8]) );
  OAI212 U74 ( .A(n68), .B(n96), .C(n69), .Q(n1) );
  AOI212 U76 ( .A(n83), .B(n70), .C(n71), .Q(n69) );
  OAI212 U78 ( .A(n80), .B(n72), .C(n73), .Q(n71) );
  XOR22 U83 ( .A(n10), .B(n81), .Q(SUM[7]) );
  AOI212 U84 ( .A(n95), .B(n75), .C(n76), .Q(n74) );
  OAI212 U86 ( .A(n77), .B(n85), .C(n80), .Q(n76) );
  AOI212 U94 ( .A(n95), .B(n82), .C(n83), .Q(n81) );
  OAI212 U100 ( .A(n94), .B(n88), .C(n89), .Q(n83) );
  AOI212 U106 ( .A(n95), .B(n91), .C(n92), .Q(n90) );
  AOI212 U115 ( .A(n105), .B(n97), .C(n98), .Q(n96) );
  OAI212 U117 ( .A(n103), .B(n99), .C(n100), .Q(n98) );
  OAI212 U123 ( .A(n178), .B(n104), .C(n180), .Q(n101) );
  OAI212 U130 ( .A(n109), .B(n106), .C(n107), .Q(n105) );
  CLKIN6 U143 ( .A(n24), .Q(n3) );
  CLKIN6 U144 ( .A(A[14]), .Q(n26) );
  AOI210 U145 ( .A(n24), .B(n34), .C(n25), .Q(n23) );
  NOR21 U146 ( .A(B[9]), .B(A[9]), .Q(n65) );
  NOR22 U147 ( .A(n44), .B(n49), .Q(n42) );
  NOR23 U148 ( .A(n72), .B(n77), .Q(n70) );
  NOR23 U149 ( .A(n102), .B(n99), .Q(n97) );
  NOR21 U150 ( .A(n77), .B(n84), .Q(n75) );
  NOR22 U151 ( .A(n60), .B(n65), .Q(n54) );
  XOR21 U152 ( .A(n5), .B(n46), .Q(SUM[12]) );
  CLKIN2 U153 ( .A(n82), .Q(n84) );
  INV3 U154 ( .A(n54), .Q(n56) );
  NAND24 U155 ( .A(n82), .B(n70), .Q(n68) );
  NAND23 U156 ( .A(A[5]), .B(B[5]), .Q(n94) );
  NOR23 U157 ( .A(B[7]), .B(A[7]), .Q(n77) );
  NOR23 U158 ( .A(B[8]), .B(A[8]), .Q(n72) );
  NAND22 U159 ( .A(A[9]), .B(B[9]), .Q(n66) );
  NOR22 U160 ( .A(B[11]), .B(A[11]), .Q(n49) );
  AOI211 U161 ( .A(n184), .B(n38), .C(n39), .Q(n37) );
  XOR21 U162 ( .A(n4), .B(n37), .Q(SUM[13]) );
  NAND22 U163 ( .A(A[1]), .B(B[1]), .Q(n109) );
  INV2 U164 ( .A(n122), .Q(n178) );
  INV3 U165 ( .A(n102), .Q(n122) );
  NOR23 U166 ( .A(B[3]), .B(A[3]), .Q(n102) );
  AOI212 U167 ( .A(n184), .B(n29), .C(n30), .Q(n28) );
  NOR24 U168 ( .A(B[2]), .B(A[2]), .Q(n106) );
  NAND24 U169 ( .A(A[2]), .B(B[2]), .Q(n107) );
  OAI211 U170 ( .A(n52), .B(n44), .C(n45), .Q(n43) );
  NOR22 U171 ( .A(B[5]), .B(A[5]), .Q(n93) );
  NAND21 U172 ( .A(n124), .B(n109), .Q(n16) );
  NAND22 U173 ( .A(n118), .B(n80), .Q(n10) );
  NOR23 U174 ( .A(B[10]), .B(A[10]), .Q(n60) );
  NAND21 U175 ( .A(A[10]), .B(B[10]), .Q(n61) );
  XOR20 U176 ( .A(n109), .B(n15), .Q(SUM[2]) );
  INV2 U177 ( .A(n105), .Q(n104) );
  AOI212 U178 ( .A(n184), .B(n54), .C(n55), .Q(n53) );
  XOR21 U179 ( .A(n14), .B(n104), .Q(SUM[3]) );
  AOI212 U180 ( .A(n184), .B(n47), .C(n48), .Q(n46) );
  NOR21 U181 ( .A(n49), .B(n56), .Q(n47) );
  NAND21 U182 ( .A(A[12]), .B(B[12]), .Q(n45) );
  NOR21 U183 ( .A(n31), .B(n40), .Q(n29) );
  NOR21 U184 ( .A(B[13]), .B(A[13]), .Q(n31) );
  XOR22 U185 ( .A(n90), .B(n11), .Q(SUM[6]) );
  NAND20 U186 ( .A(n113), .B(n45), .Q(n5) );
  INV2 U187 ( .A(n40), .Q(n38) );
  NAND22 U188 ( .A(n54), .B(n42), .Q(n40) );
  INV1 U189 ( .A(n65), .Q(n179) );
  NAND22 U190 ( .A(n121), .B(n100), .Q(n13) );
  XNR22 U191 ( .A(n13), .B(n101), .Q(SUM[4]) );
  NOR24 U192 ( .A(B[6]), .B(A[6]), .Q(n88) );
  OAI210 U193 ( .A(n31), .B(n41), .C(n32), .Q(n30) );
  INV2 U194 ( .A(n31), .Q(n33) );
  NAND22 U195 ( .A(A[3]), .B(B[3]), .Q(n103) );
  NAND21 U196 ( .A(n115), .B(n61), .Q(n7) );
  NOR22 U197 ( .A(B[12]), .B(A[12]), .Q(n44) );
  INV0 U198 ( .A(n60), .Q(n115) );
  INV3 U199 ( .A(n3), .Q(n181) );
  BUF2 U200 ( .A(n103), .Q(n180) );
  NOR20 U201 ( .A(n40), .B(n22), .Q(n20) );
  NAND20 U202 ( .A(n119), .B(n89), .Q(n11) );
  INV0 U203 ( .A(n77), .Q(n118) );
  NAND21 U204 ( .A(n33), .B(n32), .Q(n4) );
  NAND20 U205 ( .A(n33), .B(n24), .Q(n22) );
  NAND20 U206 ( .A(n117), .B(n73), .Q(n9) );
  NAND20 U207 ( .A(n114), .B(n52), .Q(n6) );
  INV0 U208 ( .A(n49), .Q(n114) );
  INV0 U209 ( .A(n94), .Q(n92) );
  INV0 U210 ( .A(n32), .Q(n34) );
  XNR21 U211 ( .A(n181), .B(n28), .Q(SUM[14]) );
  INV2 U212 ( .A(n16), .Q(SUM[1]) );
  INV3 U213 ( .A(n96), .Q(n95) );
  INV0 U214 ( .A(n41), .Q(n39) );
  INV3 U215 ( .A(n44), .Q(n113) );
  NAND22 U216 ( .A(n122), .B(n180), .Q(n14) );
  XNR21 U217 ( .A(n12), .B(n95), .Q(SUM[5]) );
  NAND22 U218 ( .A(n91), .B(n94), .Q(n12) );
  NAND22 U219 ( .A(n179), .B(n66), .Q(n8) );
  INV3 U220 ( .A(n66), .Q(n64) );
  NAND22 U221 ( .A(A[8]), .B(B[8]), .Q(n73) );
  NAND22 U222 ( .A(n110), .B(n18), .Q(n2) );
  NAND22 U223 ( .A(A[15]), .B(B[15]), .Q(n18) );
  INV3 U224 ( .A(n26), .Q(n24) );
  INV2 U225 ( .A(n108), .Q(n124) );
  INV3 U226 ( .A(n17), .Q(n110) );
  NOR21 U227 ( .A(B[15]), .B(A[15]), .Q(n17) );
  NAND22 U228 ( .A(A[11]), .B(B[11]), .Q(n52) );
  BUF2 U229 ( .A(A[0]), .Q(SUM[0]) );
  LOGIC0 U230 ( .Q(n25) );
  CLKIN2 U231 ( .A(n83), .Q(n85) );
  INV0 U232 ( .A(n99), .Q(n121) );
  INV3 U233 ( .A(n106), .Q(n123) );
  CLKIN6 U234 ( .A(n1), .Q(n183) );
  INV12 U235 ( .A(n183), .Q(n184) );
  NAND22 U236 ( .A(A[7]), .B(B[7]), .Q(n80) );
  AOI212 U237 ( .A(n184), .B(n179), .C(n64), .Q(n62) );
  XNR22 U238 ( .A(n8), .B(n184), .Q(SUM[9]) );
  INV3 U239 ( .A(n93), .Q(n91) );
  INV1 U240 ( .A(n72), .Q(n117) );
  NOR23 U241 ( .A(n88), .B(n93), .Q(n82) );
  NAND22 U242 ( .A(A[13]), .B(B[13]), .Q(n32) );
  XOR21 U243 ( .A(n2), .B(n19), .Q(SUM[15]) );
  INV3 U244 ( .A(n55), .Q(n57) );
  OAI210 U245 ( .A(n22), .B(n41), .C(n23), .Q(n21) );
  INV2 U246 ( .A(n88), .Q(n119) );
  NAND22 U247 ( .A(A[6]), .B(B[6]), .Q(n89) );
  NOR24 U248 ( .A(B[4]), .B(A[4]), .Q(n99) );
  XOR21 U249 ( .A(n6), .B(n53), .Q(SUM[11]) );
  NAND22 U250 ( .A(n123), .B(n107), .Q(n15) );
  NAND22 U251 ( .A(A[4]), .B(B[4]), .Q(n100) );
  NOR20 U252 ( .A(B[1]), .B(A[1]), .Q(n108) );
  AOI210 U253 ( .A(n184), .B(n20), .C(n21), .Q(n19) );
endmodule


module sqroot_seq_NBITS16_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n16, n17, n18,
         n19, n20, n22, n23, n24, n26, n27, n28, n29, n33, n36, n38, n39, n41,
         n42, n43, n45, n46, n47, n48, n51, n52, n55, n56, n57, n58, n60, n61,
         n64, n65;

  NAND24 U87 ( .A(n38), .B(n57), .Q(n1) );
  NOR22 U88 ( .A(n39), .B(n47), .Q(n38) );
  NOR22 U89 ( .A(n36), .B(n1), .Q(n33) );
  NAND22 U90 ( .A(A[4]), .B(A[5]), .Q(n47) );
  NAND22 U91 ( .A(A[6]), .B(A[7]), .Q(n39) );
  NOR21 U92 ( .A(n43), .B(n56), .Q(n42) );
  NAND21 U93 ( .A(n48), .B(A[6]), .Q(n43) );
  INV3 U94 ( .A(n47), .Q(n48) );
  XNR21 U95 ( .A(n6), .B(n7), .Q(SUM[14]) );
  NAND22 U96 ( .A(A[1]), .B(A[0]), .Q(n65) );
  XOR21 U97 ( .A(A[9]), .B(n33), .Q(SUM[9]) );
  XNR21 U98 ( .A(n26), .B(n27), .Q(SUM[10]) );
  NAND20 U99 ( .A(A[12]), .B(A[13]), .Q(n10) );
  XNR22 U100 ( .A(n51), .B(n52), .Q(SUM[5]) );
  INV2 U101 ( .A(n19), .Q(n18) );
  NAND22 U102 ( .A(A[8]), .B(A[9]), .Q(n28) );
  NOR21 U103 ( .A(n28), .B(n1), .Q(n27) );
  CLKIN3 U104 ( .A(n57), .Q(n56) );
  CLKIN2 U105 ( .A(A[14]), .Q(n6) );
  NOR21 U106 ( .A(n55), .B(n56), .Q(n52) );
  NOR20 U107 ( .A(n47), .B(n56), .Q(n46) );
  NAND20 U108 ( .A(n19), .B(A[12]), .Q(n14) );
  NAND20 U109 ( .A(n19), .B(n5), .Q(n4) );
  NOR20 U110 ( .A(n6), .B(n10), .Q(n5) );
  XOR21 U111 ( .A(n55), .B(n56), .Q(SUM[4]) );
  CLKIN1 U112 ( .A(A[8]), .Q(n36) );
  NOR20 U113 ( .A(n24), .B(n1), .Q(n23) );
  INV0 U114 ( .A(A[13]), .Q(n12) );
  XOR20 U115 ( .A(A[2]), .B(n64), .Q(SUM[2]) );
  XOR21 U116 ( .A(n36), .B(n1), .Q(SUM[8]) );
  NOR20 U117 ( .A(n1), .B(n8), .Q(n7) );
  NAND22 U118 ( .A(n19), .B(n9), .Q(n8) );
  INV3 U119 ( .A(n10), .Q(n9) );
  NOR20 U120 ( .A(n1), .B(n4), .Q(n3) );
  NOR20 U121 ( .A(n18), .B(n1), .Q(n17) );
  INV3 U122 ( .A(n65), .Q(n64) );
  INV3 U123 ( .A(n28), .Q(n29) );
  XNR21 U124 ( .A(n2), .B(n3), .Q(SUM[15]) );
  NOR22 U125 ( .A(n20), .B(n28), .Q(n19) );
  XNR21 U126 ( .A(n41), .B(n42), .Q(SUM[7]) );
  XNR21 U127 ( .A(n16), .B(n17), .Q(SUM[12]) );
  XOR21 U128 ( .A(n60), .B(n61), .Q(SUM[3]) );
  XNR21 U129 ( .A(n45), .B(n46), .Q(SUM[6]) );
  XOR20 U130 ( .A(A[0]), .B(A[1]), .Q(SUM[1]) );
  XNR21 U131 ( .A(n12), .B(n13), .Q(SUM[13]) );
  INV0 U132 ( .A(A[12]), .Q(n16) );
  NOR20 U133 ( .A(n1), .B(n14), .Q(n13) );
  XNR21 U134 ( .A(n22), .B(n23), .Q(SUM[11]) );
  INV3 U135 ( .A(A[15]), .Q(n2) );
  INV0 U136 ( .A(A[11]), .Q(n22) );
  NAND21 U137 ( .A(A[10]), .B(A[11]), .Q(n20) );
  NOR24 U138 ( .A(n65), .B(n58), .Q(n57) );
  NAND22 U139 ( .A(A[2]), .B(A[3]), .Q(n58) );
  INV1 U140 ( .A(A[3]), .Q(n60) );
  INV0 U141 ( .A(A[0]), .Q(SUM[0]) );
  NAND21 U142 ( .A(n29), .B(A[10]), .Q(n24) );
  INV0 U143 ( .A(A[10]), .Q(n26) );
  INV0 U144 ( .A(A[7]), .Q(n41) );
  CLKIN0 U145 ( .A(A[5]), .Q(n51) );
  INV3 U146 ( .A(A[4]), .Q(n55) );
  NAND21 U147 ( .A(n64), .B(A[2]), .Q(n61) );
  INV0 U148 ( .A(A[6]), .Q(n45) );
endmodule


module sqroot_seq_NBITS16_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n34, n35, n36, n37, n38, n39, n42, n43, n44, n45, n46, n47, n48,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n62, n63, n64, n65,
         n66, n67, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n114, n115, n116, n118, n119, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209;

  XOR22 U2 ( .A(n19), .B(n2), .Q(DIFF[15]) );
  AOI212 U8 ( .A(n209), .B(n20), .C(n21), .Q(n19) );
  AOI212 U12 ( .A(n37), .B(n24), .C(n25), .Q(n23) );
  OAI212 U14 ( .A(n34), .B(n26), .C(n27), .Q(n25) );
  NOR24 U17 ( .A(n125), .B(A[14]), .Q(n26) );
  NOR24 U27 ( .A(n126), .B(A[13]), .Q(n31) );
  AOI212 U52 ( .A(n52), .B(n65), .C(n53), .Q(n51) );
  OAI212 U54 ( .A(n196), .B(n62), .C(n55), .Q(n53) );
  NOR24 U67 ( .A(A[9]), .B(n130), .Q(n59) );
  OAI212 U76 ( .A(n70), .B(n76), .C(n71), .Q(n65) );
  XNR22 U81 ( .A(n10), .B(n77), .Q(DIFF[7]) );
  XNR22 U89 ( .A(n11), .B(n83), .Q(DIFF[6]) );
  AOI212 U91 ( .A(n87), .B(n79), .C(n80), .Q(n78) );
  NOR24 U96 ( .A(n133), .B(A[6]), .Q(n81) );
  OAI212 U99 ( .A(n84), .B(n86), .C(n85), .Q(n83) );
  NOR24 U102 ( .A(n134), .B(A[5]), .Q(n84) );
  OAI212 U106 ( .A(n100), .B(n88), .C(n89), .Q(n87) );
  AOI212 U108 ( .A(n90), .B(n96), .C(n91), .Q(n89) );
  AOI212 U125 ( .A(n105), .B(n122), .C(n102), .Q(n100) );
  OAI212 U133 ( .A(n108), .B(n106), .C(n107), .Q(n105) );
  NOR21 U159 ( .A(n42), .B(n47), .Q(n36) );
  NOR23 U160 ( .A(n127), .B(A[12]), .Q(n42) );
  NAND21 U161 ( .A(n115), .B(n62), .Q(n8) );
  NOR24 U162 ( .A(n54), .B(n59), .Q(n52) );
  NOR23 U163 ( .A(n129), .B(A[10]), .Q(n54) );
  INV4 U164 ( .A(n78), .Q(n77) );
  NOR24 U165 ( .A(n129), .B(A[10]), .Q(n196) );
  NAND24 U166 ( .A(A[9]), .B(n130), .Q(n62) );
  NAND24 U167 ( .A(A[7]), .B(n132), .Q(n76) );
  CLKIN15 U168 ( .A(n208), .Q(n209) );
  NOR23 U169 ( .A(n132), .B(A[7]), .Q(n75) );
  NOR22 U170 ( .A(n128), .B(A[11]), .Q(n47) );
  NAND22 U171 ( .A(A[8]), .B(n131), .Q(n71) );
  NAND22 U172 ( .A(n203), .B(n24), .Q(n22) );
  INV3 U173 ( .A(n92), .Q(n90) );
  NOR23 U174 ( .A(n135), .B(A[4]), .Q(n92) );
  NAND22 U175 ( .A(A[4]), .B(n135), .Q(n93) );
  NAND22 U176 ( .A(n209), .B(n6), .Q(n199) );
  INV1 U177 ( .A(n26), .Q(n110) );
  CLKIN3 U178 ( .A(n59), .Q(n194) );
  NOR24 U179 ( .A(n131), .B(A[8]), .Q(n70) );
  INV6 U180 ( .A(n1), .Q(n208) );
  OAI212 U181 ( .A(n78), .B(n50), .C(n51), .Q(n1) );
  XOR22 U182 ( .A(n7), .B(n56), .Q(DIFF[10]) );
  NAND23 U183 ( .A(n109), .B(n18), .Q(n2) );
  INV3 U184 ( .A(n17), .Q(n109) );
  NOR23 U185 ( .A(n124), .B(A[15]), .Q(n17) );
  NOR23 U186 ( .A(n70), .B(n75), .Q(n64) );
  NAND24 U187 ( .A(n197), .B(n198), .Q(n200) );
  INV3 U188 ( .A(n6), .Q(n198) );
  XNR21 U189 ( .A(n207), .B(n72), .Q(DIFF[8]) );
  NAND21 U190 ( .A(n123), .B(n107), .Q(n16) );
  NOR21 U191 ( .A(n195), .B(n66), .Q(n57) );
  INV3 U192 ( .A(n194), .Q(n195) );
  INV2 U193 ( .A(B[10]), .Q(n129) );
  INV0 U194 ( .A(n59), .Q(n115) );
  NAND21 U195 ( .A(A[14]), .B(n125), .Q(n27) );
  INV3 U196 ( .A(n75), .Q(n73) );
  NAND24 U197 ( .A(n199), .B(n200), .Q(DIFF[11]) );
  INV3 U198 ( .A(n48), .Q(n46) );
  CLKIN3 U199 ( .A(B[4]), .Q(n135) );
  NAND22 U200 ( .A(A[11]), .B(n128), .Q(n48) );
  INV0 U201 ( .A(n81), .Q(n118) );
  NAND22 U202 ( .A(A[10]), .B(n129), .Q(n55) );
  INV3 U203 ( .A(n65), .Q(n67) );
  XNR22 U204 ( .A(n205), .B(n63), .Q(DIFF[9]) );
  NAND20 U205 ( .A(n111), .B(n34), .Q(n4) );
  INV3 U206 ( .A(n42), .Q(n201) );
  INV3 U207 ( .A(n36), .Q(n38) );
  NAND22 U208 ( .A(A[1]), .B(n138), .Q(n107) );
  INV3 U209 ( .A(n209), .Q(n197) );
  NAND21 U210 ( .A(n76), .B(n73), .Q(n10) );
  NOR21 U211 ( .A(n139), .B(A[0]), .Q(n108) );
  AOI212 U212 ( .A(n77), .B(n73), .C(n74), .Q(n72) );
  AOI212 U213 ( .A(n77), .B(n64), .C(n65), .Q(n63) );
  NAND22 U214 ( .A(n52), .B(n64), .Q(n50) );
  INV6 U215 ( .A(n97), .Q(n95) );
  NAND26 U216 ( .A(A[3]), .B(n136), .Q(n98) );
  INV3 U217 ( .A(n103), .Q(n122) );
  INV0 U218 ( .A(n70), .Q(n116) );
  NAND21 U219 ( .A(n118), .B(n82), .Q(n11) );
  NAND21 U220 ( .A(n85), .B(n119), .Q(n12) );
  NOR23 U221 ( .A(n136), .B(A[3]), .Q(n97) );
  INV2 U222 ( .A(n84), .Q(n119) );
  AOI211 U223 ( .A(n99), .B(n95), .C(n96), .Q(n94) );
  OAI212 U224 ( .A(n85), .B(n81), .C(n82), .Q(n80) );
  NAND23 U225 ( .A(A[5]), .B(n134), .Q(n85) );
  XNR22 U226 ( .A(n204), .B(n44), .Q(DIFF[12]) );
  INV1 U227 ( .A(n31), .Q(n111) );
  NOR24 U228 ( .A(n26), .B(n31), .Q(n24) );
  OAI211 U229 ( .A(n195), .B(n67), .C(n62), .Q(n58) );
  NAND22 U230 ( .A(A[6]), .B(n133), .Q(n82) );
  NOR23 U231 ( .A(n138), .B(A[1]), .Q(n106) );
  AOI212 U232 ( .A(n57), .B(n77), .C(n58), .Q(n56) );
  INV3 U233 ( .A(n100), .Q(n99) );
  XOR20 U234 ( .A(n108), .B(n16), .Q(DIFF[1]) );
  AOI212 U235 ( .A(n209), .B(n29), .C(n30), .Q(n28) );
  OAI211 U236 ( .A(n31), .B(n39), .C(n34), .Q(n30) );
  NOR23 U237 ( .A(n137), .B(A[2]), .Q(n103) );
  NAND22 U238 ( .A(A[2]), .B(n137), .Q(n104) );
  INV1 U239 ( .A(B[8]), .Q(n131) );
  NAND24 U240 ( .A(n46), .B(n201), .Q(n202) );
  NAND28 U241 ( .A(n202), .B(n43), .Q(n37) );
  NAND22 U242 ( .A(A[12]), .B(n127), .Q(n43) );
  AOI212 U243 ( .A(n209), .B(n203), .C(n37), .Q(n35) );
  INV6 U244 ( .A(n37), .Q(n39) );
  INV4 U245 ( .A(n38), .Q(n203) );
  CLKIN0 U246 ( .A(B[5]), .Q(n134) );
  CLKIN2 U247 ( .A(n64), .Q(n66) );
  XNR20 U248 ( .A(n14), .B(n99), .Q(DIFF[3]) );
  NAND22 U249 ( .A(A[13]), .B(n126), .Q(n34) );
  NAND21 U250 ( .A(n55), .B(n114), .Q(n7) );
  AOI212 U251 ( .A(n209), .B(n45), .C(n46), .Q(n44) );
  CLKIN0 U252 ( .A(B[0]), .Q(n139) );
  XOR21 U253 ( .A(n13), .B(n94), .Q(DIFF[4]) );
  XNR22 U254 ( .A(n206), .B(n35), .Q(DIFF[13]) );
  INV3 U255 ( .A(n22), .Q(n20) );
  NAND21 U256 ( .A(n110), .B(n27), .Q(n3) );
  NAND22 U257 ( .A(A[15]), .B(n124), .Q(n18) );
  INV0 U258 ( .A(B[9]), .Q(n130) );
  INV3 U259 ( .A(n4), .Q(n206) );
  INV0 U260 ( .A(B[14]), .Q(n125) );
  INV6 U261 ( .A(n98), .Q(n96) );
  NOR24 U262 ( .A(n81), .B(n84), .Q(n79) );
  INV2 U263 ( .A(n5), .Q(n204) );
  INV3 U264 ( .A(n8), .Q(n205) );
  INV2 U265 ( .A(n9), .Q(n207) );
  XNR20 U266 ( .A(n105), .B(n15), .Q(DIFF[2]) );
  INV0 U267 ( .A(B[13]), .Q(n126) );
  INV3 U268 ( .A(n104), .Q(n102) );
  INV0 U269 ( .A(n76), .Q(n74) );
  NAND20 U270 ( .A(n122), .B(n104), .Q(n15) );
  NAND24 U271 ( .A(n90), .B(n95), .Q(n88) );
  INV3 U272 ( .A(n93), .Q(n91) );
  INV3 U273 ( .A(n47), .Q(n45) );
  NAND20 U274 ( .A(n116), .B(n71), .Q(n9) );
  XOR22 U275 ( .A(n3), .B(n28), .Q(DIFF[14]) );
  NAND21 U276 ( .A(n45), .B(n48), .Q(n6) );
  NOR21 U277 ( .A(n31), .B(n38), .Q(n29) );
  NAND20 U278 ( .A(n201), .B(n43), .Q(n5) );
  NAND20 U279 ( .A(n90), .B(n93), .Q(n13) );
  INV3 U280 ( .A(n106), .Q(n123) );
  INV0 U281 ( .A(n196), .Q(n114) );
  INV3 U282 ( .A(B[3]), .Q(n136) );
  XOR21 U283 ( .A(n12), .B(n86), .Q(DIFF[5]) );
  INV3 U284 ( .A(B[15]), .Q(n124) );
  INV0 U285 ( .A(B[12]), .Q(n127) );
  INV0 U286 ( .A(B[11]), .Q(n128) );
  NAND21 U287 ( .A(n95), .B(n98), .Q(n14) );
  INV1 U288 ( .A(B[6]), .Q(n133) );
  INV1 U289 ( .A(B[7]), .Q(n132) );
  INV2 U290 ( .A(B[1]), .Q(n138) );
  INV2 U291 ( .A(n87), .Q(n86) );
  INV1 U292 ( .A(B[2]), .Q(n137) );
  XNR20 U293 ( .A(n139), .B(A[0]), .Q(DIFF[0]) );
  INV3 U294 ( .A(n23), .Q(n21) );
endmodule


module sqroot_seq_NBITS16_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n56, n57, n58, n59, n60, n61, n64,
         n65, n66, n67, n68, n69, n70, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n84, n85, n86, n87, n88, n89, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n116, n117, n118, n120, n121, n122, n124, n125,
         n126, n127, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237;

  XOR22 U27 ( .A(n4), .B(n41), .Q(DIFF[12]) );
  XOR22 U37 ( .A(n5), .B(n50), .Q(DIFF[11]) );
  AOI212 U42 ( .A(n59), .B(n46), .C(n47), .Q(n45) );
  OAI212 U44 ( .A(n56), .B(n48), .C(n49), .Q(n47) );
  OAI212 U52 ( .A(n53), .B(n61), .C(n56), .Q(n52) );
  AOI212 U60 ( .A(n58), .B(n230), .C(n59), .Q(n57) );
  OAI212 U66 ( .A(n70), .B(n64), .C(n65), .Q(n59) );
  NOR24 U69 ( .A(A[9]), .B(n132), .Q(n64) );
  AOI212 U72 ( .A(n230), .B(n67), .C(n68), .Q(n66) );
  AOI212 U82 ( .A(n87), .B(n74), .C(n75), .Q(n73) );
  OAI212 U84 ( .A(n84), .B(n76), .C(n77), .Q(n75) );
  NOR24 U87 ( .A(A[7]), .B(n134), .Q(n76) );
  NOR24 U97 ( .A(A[6]), .B(n135), .Q(n81) );
  AOI212 U100 ( .A(n99), .B(n86), .C(n217), .Q(n85) );
  OAI212 U106 ( .A(n98), .B(n92), .C(n93), .Q(n87) );
  AOI212 U112 ( .A(n99), .B(n95), .C(n96), .Q(n94) );
  AOI212 U121 ( .A(n205), .B(n101), .C(n102), .Q(n100) );
  NOR24 U126 ( .A(A[3]), .B(n138), .Q(n103) );
  OAI212 U129 ( .A(n199), .B(n108), .C(n107), .Q(n105) );
  OAI212 U136 ( .A(n110), .B(n112), .C(n111), .Q(n109) );
  OAI212 U22 ( .A(n40), .B(n32), .C(n33), .Q(n31) );
  CLKIN6 U161 ( .A(n33), .Q(n3) );
  CLKIN6 U162 ( .A(A[13]), .Q(n33) );
  CLKIN6 U163 ( .A(n37), .Q(n30) );
  NAND24 U164 ( .A(n126), .B(n111), .Q(n15) );
  NAND24 U165 ( .A(n236), .B(n237), .Q(DIFF[8]) );
  NAND28 U166 ( .A(n207), .B(n208), .Q(DIFF[10]) );
  NOR23 U167 ( .A(A[1]), .B(n140), .Q(n110) );
  NOR24 U168 ( .A(n140), .B(A[1]), .Q(n231) );
  NAND23 U169 ( .A(n86), .B(n74), .Q(n72) );
  NOR23 U170 ( .A(n76), .B(n81), .Q(n74) );
  NOR24 U171 ( .A(A[5]), .B(n136), .Q(n92) );
  CLKIN4 U172 ( .A(B[5]), .Q(n136) );
  NAND22 U173 ( .A(n136), .B(A[5]), .Q(n93) );
  NOR22 U174 ( .A(A[12]), .B(n129), .Q(n37) );
  INV3 U175 ( .A(B[12]), .Q(n129) );
  AOI212 U176 ( .A(n99), .B(n79), .C(n80), .Q(n78) );
  XNR22 U177 ( .A(n12), .B(n99), .Q(DIFF[4]) );
  XNR22 U178 ( .A(n196), .B(n78), .Q(DIFF[7]) );
  NOR24 U179 ( .A(n48), .B(n53), .Q(n46) );
  NOR23 U180 ( .A(A[10]), .B(n131), .Q(n53) );
  NOR22 U181 ( .A(n224), .B(n27), .Q(n25) );
  NOR23 U182 ( .A(A[11]), .B(n130), .Q(n48) );
  NAND23 U183 ( .A(n206), .B(n6), .Q(n208) );
  INV3 U184 ( .A(n57), .Q(n206) );
  CLKIN10 U185 ( .A(B[0]), .Q(n141) );
  INV4 U186 ( .A(n105), .Q(n210) );
  NOR24 U187 ( .A(A[0]), .B(n141), .Q(n232) );
  NAND24 U188 ( .A(A[4]), .B(n137), .Q(n98) );
  NOR23 U189 ( .A(n235), .B(n223), .Q(n224) );
  NOR23 U190 ( .A(n235), .B(n227), .Q(n228) );
  XOR21 U191 ( .A(A[15]), .B(n16), .Q(DIFF[15]) );
  NAND21 U192 ( .A(n95), .B(n98), .Q(n12) );
  INV3 U193 ( .A(B[10]), .Q(n131) );
  NAND22 U194 ( .A(n58), .B(n46), .Q(n44) );
  INV3 U195 ( .A(B[11]), .Q(n130) );
  CLKIN6 U196 ( .A(B[3]), .Q(n138) );
  INV3 U197 ( .A(n2), .Q(n198) );
  INV3 U198 ( .A(n3), .Q(n218) );
  CLKIN6 U199 ( .A(B[2]), .Q(n139) );
  INV6 U200 ( .A(B[4]), .Q(n137) );
  INV3 U201 ( .A(n11), .Q(n197) );
  INV3 U202 ( .A(n10), .Q(n204) );
  INV3 U203 ( .A(n9), .Q(n196) );
  NAND21 U204 ( .A(n67), .B(n70), .Q(n8) );
  XNR22 U205 ( .A(n197), .B(n94), .Q(DIFF[5]) );
  XNR22 U206 ( .A(n198), .B(n25), .Q(DIFF[14]) );
  NOR24 U207 ( .A(n200), .B(n106), .Q(n101) );
  NAND24 U208 ( .A(n214), .B(n215), .Q(n216) );
  INV3 U209 ( .A(n125), .Q(n199) );
  INV3 U210 ( .A(n106), .Q(n125) );
  NOR23 U211 ( .A(A[2]), .B(n139), .Q(n106) );
  NOR23 U212 ( .A(A[3]), .B(n138), .Q(n200) );
  NAND21 U213 ( .A(n125), .B(n107), .Q(n14) );
  NOR23 U214 ( .A(n228), .B(n36), .Q(n34) );
  CLKIN6 U215 ( .A(n230), .Q(n235) );
  NAND21 U216 ( .A(n30), .B(n43), .Q(n222) );
  CLKIN3 U217 ( .A(n45), .Q(n43) );
  NAND22 U218 ( .A(n66), .B(n213), .Q(n202) );
  NAND26 U219 ( .A(n7), .B(n201), .Q(n203) );
  NAND28 U220 ( .A(n202), .B(n203), .Q(DIFF[9]) );
  CLKIN6 U221 ( .A(n66), .Q(n201) );
  INV3 U222 ( .A(n7), .Q(n213) );
  INV6 U223 ( .A(n100), .Q(n99) );
  XNR22 U224 ( .A(n204), .B(n85), .Q(DIFF[6]) );
  NAND26 U225 ( .A(n139), .B(A[2]), .Q(n107) );
  OAI212 U226 ( .A(n112), .B(n110), .C(n111), .Q(n205) );
  NAND22 U227 ( .A(n57), .B(n229), .Q(n207) );
  INV3 U228 ( .A(n6), .Q(n229) );
  NAND23 U229 ( .A(n235), .B(n234), .Q(n237) );
  INV3 U230 ( .A(n35), .Q(n227) );
  NAND21 U231 ( .A(n105), .B(n13), .Q(n211) );
  NAND24 U232 ( .A(n209), .B(n210), .Q(n212) );
  NAND24 U233 ( .A(n211), .B(n212), .Q(DIFF[3]) );
  INV3 U234 ( .A(n13), .Q(n209) );
  NAND24 U235 ( .A(n140), .B(A[1]), .Q(n111) );
  INV6 U236 ( .A(n107), .Q(n214) );
  NOR23 U237 ( .A(n92), .B(n97), .Q(n86) );
  CLKIN6 U238 ( .A(n103), .Q(n215) );
  NAND26 U239 ( .A(n216), .B(n104), .Q(n102) );
  INV3 U240 ( .A(n89), .Q(n217) );
  INV2 U241 ( .A(n87), .Q(n89) );
  XOR22 U242 ( .A(n14), .B(n108), .Q(DIFF[2]) );
  XNR22 U243 ( .A(n218), .B(n34), .Q(DIFF[13]) );
  INV1 U244 ( .A(n235), .Q(n219) );
  INV3 U245 ( .A(n220), .Q(n124) );
  BUF2 U246 ( .A(n200), .Q(n220) );
  AOI212 U247 ( .A(n230), .B(n51), .C(n52), .Q(n50) );
  AOI212 U248 ( .A(n230), .B(n42), .C(n43), .Q(n41) );
  NAND21 U249 ( .A(n230), .B(n8), .Q(n236) );
  AOI212 U250 ( .A(n109), .B(n101), .C(n102), .Q(n221) );
  XOR21 U251 ( .A(n232), .B(n15), .Q(DIFF[1]) );
  INV3 U252 ( .A(n231), .Q(n126) );
  NOR22 U253 ( .A(n64), .B(n69), .Q(n58) );
  BUF15 U254 ( .A(n1), .Q(n230) );
  INV1 U255 ( .A(n69), .Q(n67) );
  NOR20 U256 ( .A(n28), .B(n44), .Q(n26) );
  NAND22 U257 ( .A(n129), .B(A[12]), .Q(n40) );
  NAND22 U258 ( .A(n222), .B(n29), .Q(n27) );
  INV3 U259 ( .A(n30), .Q(n28) );
  INV3 U260 ( .A(n26), .Q(n223) );
  CLKIN0 U261 ( .A(n37), .Q(n225) );
  INV0 U262 ( .A(n53), .Q(n117) );
  CLKIN1 U263 ( .A(n86), .Q(n88) );
  NOR20 U264 ( .A(n37), .B(n44), .Q(n35) );
  CLKIN6 U265 ( .A(B[1]), .Q(n140) );
  NAND22 U266 ( .A(n131), .B(A[10]), .Q(n56) );
  CLKIN6 U267 ( .A(B[7]), .Q(n134) );
  NAND22 U268 ( .A(n225), .B(n43), .Q(n226) );
  NAND21 U269 ( .A(n226), .B(n40), .Q(n36) );
  NOR20 U270 ( .A(n53), .B(n60), .Q(n51) );
  NOR23 U271 ( .A(A[4]), .B(n137), .Q(n97) );
  CLKIN6 U272 ( .A(B[8]), .Q(n133) );
  CLKIN0 U273 ( .A(n98), .Q(n96) );
  NAND20 U274 ( .A(n116), .B(n49), .Q(n5) );
  CLKIN0 U275 ( .A(n70), .Q(n68) );
  NOR20 U276 ( .A(n19), .B(n44), .Q(n17) );
  INV3 U277 ( .A(n44), .Q(n42) );
  NAND22 U278 ( .A(n120), .B(n77), .Q(n9) );
  INV0 U279 ( .A(n76), .Q(n120) );
  INV0 U280 ( .A(n48), .Q(n116) );
  NAND22 U281 ( .A(n21), .B(n24), .Q(n2) );
  NAND22 U282 ( .A(n225), .B(n40), .Q(n4) );
  NAND22 U283 ( .A(n121), .B(n84), .Q(n10) );
  INV0 U284 ( .A(n81), .Q(n121) );
  NAND22 U285 ( .A(n117), .B(n56), .Q(n6) );
  NAND22 U286 ( .A(n118), .B(n65), .Q(n7) );
  INV0 U287 ( .A(n64), .Q(n118) );
  INV3 U288 ( .A(n31), .Q(n29) );
  AOI211 U289 ( .A(n31), .B(n21), .C(n22), .Q(n20) );
  INV3 U290 ( .A(n24), .Q(n22) );
  INV3 U291 ( .A(n97), .Q(n95) );
  NAND22 U292 ( .A(n30), .B(n21), .Q(n19) );
  INV3 U293 ( .A(n58), .Q(n60) );
  NAND22 U294 ( .A(n134), .B(A[7]), .Q(n77) );
  NOR22 U295 ( .A(A[8]), .B(n133), .Q(n69) );
  NAND23 U296 ( .A(n135), .B(A[6]), .Q(n84) );
  NAND22 U297 ( .A(n127), .B(A[14]), .Q(n24) );
  NAND22 U298 ( .A(n130), .B(A[11]), .Q(n49) );
  NAND22 U299 ( .A(n132), .B(A[9]), .Q(n65) );
  INV3 U300 ( .A(B[14]), .Q(n127) );
  NAND22 U301 ( .A(n133), .B(A[8]), .Q(n70) );
  INV3 U302 ( .A(n23), .Q(n21) );
  NOR21 U303 ( .A(A[14]), .B(n127), .Q(n23) );
  CLKIN6 U304 ( .A(B[6]), .Q(n135) );
  LOGIC0 U305 ( .Q(n32) );
  INV6 U306 ( .A(n233), .Q(n108) );
  OAI212 U307 ( .A(n72), .B(n221), .C(n73), .Q(n1) );
  NOR24 U308 ( .A(A[0]), .B(n141), .Q(n112) );
  OAI212 U309 ( .A(n232), .B(n231), .C(n111), .Q(n233) );
  INV1 U310 ( .A(n59), .Q(n61) );
  AOI210 U311 ( .A(n219), .B(n17), .C(n18), .Q(n16) );
  XNR21 U312 ( .A(A[0]), .B(n141), .Q(DIFF[0]) );
  OAI212 U313 ( .A(n81), .B(n89), .C(n84), .Q(n80) );
  NOR21 U314 ( .A(n81), .B(n88), .Q(n79) );
  NAND22 U315 ( .A(n138), .B(A[3]), .Q(n104) );
  NAND22 U316 ( .A(n124), .B(n104), .Q(n13) );
  NAND22 U317 ( .A(n122), .B(n93), .Q(n11) );
  INV1 U318 ( .A(n92), .Q(n122) );
  INV3 U319 ( .A(n8), .Q(n234) );
  OAI210 U320 ( .A(n19), .B(n45), .C(n20), .Q(n18) );
  CLKIN6 U321 ( .A(B[9]), .Q(n132) );
endmodule


module sqroot_seq_NBITS16_DW01_add_7 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n33,
         n34, n35, n36, n37, n38, n41, n42, n43, n44, n45, n46, n47, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n61, n62, n63, n64, n65, n66,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n96, n97, n98,
         n99, n101, n102, n103, n104, n106, n107, n108, n109, n110, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n123, n124, n126, n129,
         n130, n131, n132, n187, n188, n189, n190, n191, n192, n193, n194,
         n195;

  AOI212 U9 ( .A(n36), .B(n23), .C(n24), .Q(n22) );
  XOR22 U26 ( .A(n4), .B(n43), .Q(SUM[12]) );
  OAI212 U33 ( .A(n47), .B(n41), .C(n42), .Q(n36) );
  AOI212 U39 ( .A(n1), .B(n44), .C(n45), .Q(n43) );
  NOR24 U54 ( .A(B[10]), .B(A[10]), .Q(n53) );
  XOR22 U56 ( .A(n7), .B(n62), .Q(SUM[9]) );
  XOR22 U66 ( .A(n8), .B(n71), .Q(SUM[8]) );
  AOI212 U67 ( .A(n76), .B(n63), .C(n64), .Q(n62) );
  OAI212 U73 ( .A(n75), .B(n69), .C(n70), .Q(n64) );
  AOI212 U88 ( .A(n97), .B(n78), .C(n79), .Q(n77) );
  OAI212 U90 ( .A(n80), .B(n84), .C(n81), .Q(n79) );
  OAI212 U106 ( .A(n90), .B(n96), .C(n91), .Q(n89) );
  OAI212 U117 ( .A(n110), .B(n98), .C(n99), .Q(n97) );
  AOI212 U119 ( .A(n129), .B(n106), .C(n101), .Q(n99) );
  AOI212 U136 ( .A(n131), .B(n115), .C(n112), .Q(n110) );
  CLKIN6 U152 ( .A(n26), .Q(n24) );
  CLKIN6 U153 ( .A(n119), .Q(n3) );
  OAI212 U154 ( .A(n30), .B(n38), .C(n33), .Q(n29) );
  CLKIN6 U155 ( .A(A[13]), .Q(n30) );
  NOR22 U156 ( .A(A[2]), .B(B[2]), .Q(n107) );
  INV3 U157 ( .A(n36), .Q(n38) );
  NOR24 U158 ( .A(B[12]), .B(A[12]), .Q(n41) );
  NAND22 U159 ( .A(B[1]), .B(A[1]), .Q(n114) );
  NOR22 U160 ( .A(A[1]), .B(B[1]), .Q(n113) );
  INV3 U161 ( .A(n108), .Q(n106) );
  NOR23 U162 ( .A(B[7]), .B(A[7]), .Q(n74) );
  INV3 U163 ( .A(n88), .Q(n86) );
  NOR22 U164 ( .A(B[11]), .B(A[11]), .Q(n46) );
  NAND23 U165 ( .A(A[7]), .B(B[7]), .Q(n75) );
  NOR23 U166 ( .A(n190), .B(n57), .Q(n55) );
  INV3 U167 ( .A(n97), .Q(n96) );
  INV2 U168 ( .A(n64), .Q(n66) );
  NOR22 U169 ( .A(A[3]), .B(B[3]), .Q(n102) );
  AOI212 U170 ( .A(n1), .B(n35), .C(n36), .Q(n34) );
  XOR22 U171 ( .A(n3), .B(n34), .Q(SUM[13]) );
  NAND24 U172 ( .A(B[2]), .B(A[2]), .Q(n108) );
  INV3 U173 ( .A(n113), .Q(n131) );
  NAND22 U174 ( .A(n130), .B(n129), .Q(n98) );
  NAND24 U175 ( .A(n76), .B(n191), .Q(n192) );
  INV3 U176 ( .A(n114), .Q(n112) );
  NAND22 U177 ( .A(n51), .B(n63), .Q(n49) );
  NAND23 U178 ( .A(n195), .B(n54), .Q(n52) );
  NOR23 U179 ( .A(n58), .B(n53), .Q(n51) );
  INV3 U180 ( .A(n117), .Q(n115) );
  NAND22 U181 ( .A(B[0]), .B(A[0]), .Q(n117) );
  NOR23 U182 ( .A(n188), .B(n189), .Q(n190) );
  XNR21 U183 ( .A(n10), .B(n82), .Q(SUM[6]) );
  XNR21 U184 ( .A(n9), .B(n76), .Q(SUM[7]) );
  NAND22 U185 ( .A(n72), .B(n75), .Q(n9) );
  BUF2 U186 ( .A(n84), .Q(n187) );
  INV3 U187 ( .A(n76), .Q(n188) );
  CLKIN10 U188 ( .A(n77), .Q(n76) );
  NAND22 U189 ( .A(A[9]), .B(B[9]), .Q(n61) );
  NOR23 U190 ( .A(n25), .B(n30), .Q(n23) );
  INV6 U191 ( .A(n90), .Q(n92) );
  INV6 U192 ( .A(n87), .Q(n85) );
  NAND26 U193 ( .A(B[4]), .B(A[4]), .Q(n91) );
  XNR21 U194 ( .A(n11), .B(n89), .Q(SUM[5]) );
  NAND23 U195 ( .A(n85), .B(n92), .Q(n83) );
  AOI211 U196 ( .A(n109), .B(n130), .C(n106), .Q(n104) );
  INV3 U197 ( .A(n110), .Q(n109) );
  NOR23 U198 ( .A(n69), .B(n74), .Q(n63) );
  NAND22 U199 ( .A(A[10]), .B(B[10]), .Q(n54) );
  OAI212 U200 ( .A(n58), .B(n66), .C(n61), .Q(n57) );
  NOR24 U201 ( .A(n80), .B(n83), .Q(n78) );
  NOR24 U202 ( .A(B[5]), .B(A[5]), .Q(n87) );
  INV0 U203 ( .A(n47), .Q(n45) );
  NAND21 U204 ( .A(n44), .B(n47), .Q(n5) );
  NAND23 U205 ( .A(A[5]), .B(B[5]), .Q(n88) );
  INV3 U206 ( .A(n49), .Q(n191) );
  AOI212 U207 ( .A(n51), .B(n64), .C(n52), .Q(n50) );
  NAND20 U208 ( .A(n85), .B(n88), .Q(n11) );
  NAND22 U209 ( .A(A[12]), .B(B[12]), .Q(n42) );
  INV2 U210 ( .A(n63), .Q(n65) );
  OAI211 U211 ( .A(n83), .B(n96), .C(n187), .Q(n82) );
  XOR20 U212 ( .A(n12), .B(n96), .Q(SUM[4]) );
  INV3 U213 ( .A(n56), .Q(n189) );
  NOR21 U214 ( .A(n58), .B(n65), .Q(n56) );
  INV1 U215 ( .A(n74), .Q(n72) );
  NOR22 U216 ( .A(n41), .B(n46), .Q(n35) );
  NOR24 U217 ( .A(B[9]), .B(A[9]), .Q(n58) );
  NAND22 U218 ( .A(A[11]), .B(B[11]), .Q(n47) );
  INV0 U219 ( .A(n30), .Q(n119) );
  NAND21 U220 ( .A(n118), .B(n26), .Q(n2) );
  NAND28 U221 ( .A(n192), .B(n50), .Q(n1) );
  AOI212 U222 ( .A(n1), .B(n28), .C(n29), .Q(n27) );
  INV0 U223 ( .A(n58), .Q(n123) );
  NAND22 U224 ( .A(A[6]), .B(B[6]), .Q(n81) );
  NAND22 U225 ( .A(B[3]), .B(A[3]), .Q(n103) );
  AOI211 U226 ( .A(n76), .B(n72), .C(n73), .Q(n71) );
  NOR24 U227 ( .A(A[4]), .B(B[4]), .Q(n90) );
  NAND22 U228 ( .A(n35), .B(n23), .Q(n21) );
  INV2 U229 ( .A(n25), .Q(n118) );
  NOR24 U230 ( .A(B[14]), .B(A[14]), .Q(n25) );
  AOI212 U231 ( .A(n85), .B(n93), .C(n86), .Q(n84) );
  INV6 U232 ( .A(n91), .Q(n93) );
  XOR22 U233 ( .A(n6), .B(n55), .Q(SUM[10]) );
  NAND21 U234 ( .A(n123), .B(n61), .Q(n7) );
  INV3 U235 ( .A(n21), .Q(n19) );
  NAND20 U236 ( .A(n92), .B(n91), .Q(n12) );
  XNR20 U237 ( .A(n115), .B(n15), .Q(SUM[1]) );
  NAND20 U238 ( .A(n132), .B(n117), .Q(n16) );
  NOR24 U239 ( .A(B[6]), .B(A[6]), .Q(n80) );
  NOR24 U240 ( .A(B[8]), .B(A[8]), .Q(n69) );
  INV3 U241 ( .A(n103), .Q(n101) );
  NAND20 U242 ( .A(n124), .B(n70), .Q(n8) );
  NAND22 U243 ( .A(n126), .B(n81), .Q(n10) );
  XNR21 U244 ( .A(n14), .B(n109), .Q(SUM[2]) );
  NAND20 U245 ( .A(n130), .B(n108), .Q(n14) );
  XOR21 U246 ( .A(n13), .B(n104), .Q(SUM[3]) );
  NAND20 U247 ( .A(n129), .B(n103), .Q(n13) );
  NAND20 U248 ( .A(n131), .B(n114), .Q(n15) );
  INV3 U249 ( .A(n46), .Q(n44) );
  INV0 U250 ( .A(n41), .Q(n120) );
  NAND22 U251 ( .A(n120), .B(n42), .Q(n4) );
  INV0 U252 ( .A(n75), .Q(n73) );
  INV3 U253 ( .A(n16), .Q(SUM[0]) );
  INV3 U254 ( .A(n116), .Q(n132) );
  XNR22 U255 ( .A(A[15]), .B(n18), .Q(SUM[15]) );
  CLKIN3 U256 ( .A(n35), .Q(n37) );
  NAND22 U257 ( .A(A[14]), .B(B[14]), .Q(n26) );
  LOGIC1 U258 ( .Q(n33) );
  INV0 U259 ( .A(n80), .Q(n126) );
  NAND22 U260 ( .A(A[8]), .B(B[8]), .Q(n70) );
  INV0 U261 ( .A(n69), .Q(n124) );
  NOR21 U262 ( .A(n30), .B(n37), .Q(n28) );
  NOR20 U263 ( .A(A[0]), .B(B[0]), .Q(n116) );
  XNR22 U264 ( .A(n5), .B(n1), .Q(SUM[11]) );
  AOI212 U265 ( .A(n1), .B(n19), .C(n20), .Q(n18) );
  NAND22 U266 ( .A(n194), .B(n54), .Q(n6) );
  NAND24 U267 ( .A(n194), .B(n193), .Q(n195) );
  INV6 U268 ( .A(n61), .Q(n193) );
  CLKIN6 U269 ( .A(n53), .Q(n194) );
  XOR22 U270 ( .A(n2), .B(n27), .Q(SUM[14]) );
  INV3 U271 ( .A(n22), .Q(n20) );
  CLKIN6 U272 ( .A(n107), .Q(n130) );
  CLKIN6 U273 ( .A(n102), .Q(n129) );
endmodule


module sqroot_seq_NBITS16 ( arg, roundup, clk, nRst, start, sqroot, ready );
  input [15:0] arg;
  output [8:0] sqroot;
  input roundup, clk, nRst, start;
  output ready;
  wire   n_Logic0_, n402, n403, N42, N43, N44, N45, N46, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N57, n31, n32, n33, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n126, N88, N87, N86, N85,
         N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, n128,
         n129, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n400, n401;
  wire   [2:0] state_reg;
  wire   [15:9] root_reg;
  wire   [14:0] delta_reg;
  wire   [15:0] res_reg;
  wire   [15:0] root_next;
  wire   [14:0] delta_next;
  wire   [15:0] res_next;
  wire   [15:0] fuo_if_res;
  wire   [15:0] fuo_if_root;
  wire   [15:0] fuo_round;

  DFC3 delta_reg_reg_10_ ( .D(delta_next[10]), .C(clk), .RN(nRst), .Q(
        delta_reg[10]), .QN(n40) );
  DFC3 delta_reg_reg_8_ ( .D(delta_next[8]), .C(clk), .RN(nRst), .Q(
        delta_reg[8]), .QN(n42) );
  DFC3 delta_reg_reg_6_ ( .D(delta_next[6]), .C(clk), .RN(nRst), .Q(
        delta_reg[6]), .QN(n44) );
  DFC3 delta_reg_reg_4_ ( .D(delta_next[4]), .C(clk), .RN(nRst), .Q(
        delta_reg[4]), .QN(n46) );
  DFC3 delta_reg_reg_2_ ( .D(delta_next[2]), .C(clk), .RN(nRst), .Q(
        delta_reg[2]), .QN(n48) );
  DFC3 delta_reg_reg_11_ ( .D(delta_next[11]), .C(clk), .RN(nRst), .Q(
        delta_reg[11]), .QN(n39) );
  DFC3 delta_reg_reg_9_ ( .D(delta_next[9]), .C(clk), .RN(nRst), .Q(
        delta_reg[9]), .QN(n41) );
  DFC3 delta_reg_reg_7_ ( .D(delta_next[7]), .C(clk), .RN(nRst), .Q(
        delta_reg[7]), .QN(n43) );
  DFC3 delta_reg_reg_5_ ( .D(delta_next[5]), .C(clk), .RN(nRst), .Q(
        delta_reg[5]), .QN(n45) );
  DFC3 delta_reg_reg_3_ ( .D(delta_next[3]), .C(clk), .RN(nRst), .Q(
        delta_reg[3]), .QN(n47) );
  DFC3 delta_reg_reg_14_ ( .D(delta_next[14]), .C(clk), .RN(nRst), .Q(
        delta_reg[14]), .QN(n36) );
  DFC3 delta_reg_reg_12_ ( .D(delta_next[12]), .C(clk), .RN(nRst), .Q(
        delta_reg[12]), .QN(n38) );
  DFC3 delta_reg_reg_0_ ( .D(delta_next[0]), .C(clk), .RN(nRst), .Q(
        delta_reg[0]), .QN(n170) );
  DFC3 state_reg_reg_1_ ( .D(n126), .C(clk), .RN(nRst), .Q(state_reg[1]), .QN(
        n32) );
  DFC3 delta_reg_reg_1_ ( .D(delta_next[1]), .C(clk), .RN(nRst), .Q(
        delta_reg[1]), .QN(n155) );
  DFC3 state_reg_reg_2_ ( .D(n401), .C(clk), .RN(nRst), .Q(state_reg[2]), .QN(
        n31) );
  DFC3 root_reg_reg_0_ ( .D(root_next[0]), .C(clk), .RN(nRst), .Q(sqroot[0]), 
        .QN(n131) );
  DFC3 root_reg_reg_14_ ( .D(root_next[14]), .C(clk), .RN(nRst), .Q(
        root_reg[14]) );
  DFC3 root_reg_reg_13_ ( .D(root_next[13]), .C(clk), .RN(nRst), .Q(
        root_reg[13]) );
  DFC3 root_reg_reg_12_ ( .D(root_next[12]), .C(clk), .RN(nRst), .Q(
        root_reg[12]) );
  DFC3 root_reg_reg_11_ ( .D(root_next[11]), .C(clk), .RN(nRst), .Q(
        root_reg[11]) );
  DFC3 root_reg_reg_10_ ( .D(root_next[10]), .C(clk), .RN(nRst), .Q(
        root_reg[10]) );
  DFC3 root_reg_reg_9_ ( .D(root_next[9]), .C(clk), .RN(nRst), .Q(root_reg[9])
         );
  DFC3 root_reg_reg_8_ ( .D(root_next[8]), .C(clk), .RN(nRst), .Q(sqroot[8])
         );
  DFC3 root_reg_reg_7_ ( .D(root_next[7]), .C(clk), .RN(nRst), .Q(sqroot[7])
         );
  DFC3 root_reg_reg_6_ ( .D(n145), .C(clk), .RN(nRst), .Q(sqroot[6]) );
  DFC3 root_reg_reg_5_ ( .D(n146), .C(clk), .RN(nRst), .Q(sqroot[5]) );
  DFC3 root_reg_reg_4_ ( .D(root_next[4]), .C(clk), .RN(nRst), .Q(sqroot[4])
         );
  DFC3 root_reg_reg_3_ ( .D(root_next[3]), .C(clk), .RN(nRst), .Q(n402) );
  DFC3 root_reg_reg_2_ ( .D(root_next[2]), .C(clk), .RN(nRst), .Q(n403), .QN(
        n132) );
  DFC3 res_reg_reg_9_ ( .D(res_next[9]), .C(clk), .RN(nRst), .Q(res_reg[9]), 
        .QN(n139) );
  DFC3 res_reg_reg_8_ ( .D(res_next[8]), .C(clk), .RN(nRst), .Q(res_reg[8]), 
        .QN(n141) );
  DFC3 res_reg_reg_7_ ( .D(res_next[7]), .C(clk), .RN(nRst), .Q(res_reg[7]), 
        .QN(n134) );
  DFC3 res_reg_reg_6_ ( .D(res_next[6]), .C(clk), .RN(nRst), .Q(res_reg[6]), 
        .QN(n137) );
  DFC3 res_reg_reg_5_ ( .D(res_next[5]), .C(clk), .RN(nRst), .Q(res_reg[5]), 
        .QN(n138) );
  DFC3 res_reg_reg_4_ ( .D(res_next[4]), .C(clk), .RN(nRst), .Q(res_reg[4]), 
        .QN(n133) );
  DFC3 res_reg_reg_3_ ( .D(res_next[3]), .C(clk), .RN(nRst), .Q(res_reg[3]), 
        .QN(n148) );
  DFC3 res_reg_reg_2_ ( .D(res_next[2]), .C(clk), .RN(nRst), .Q(res_reg[2]), 
        .QN(n142) );
  DFC3 res_reg_reg_1_ ( .D(res_next[1]), .C(clk), .RN(nRst), .Q(res_reg[1]), 
        .QN(n188) );
  DFC3 res_reg_reg_0_ ( .D(res_next[0]), .C(clk), .RN(nRst), .Q(res_reg[0]), 
        .QN(n136) );
  sqroot_seq_NBITS16_DW01_add_3 add_140 ( .A({root_reg, sqroot}), .B({
        delta_reg[14], n_Logic0_, delta_reg[12:6], n172, delta_reg[4], n169, 
        delta_reg[2], n156, delta_reg[0], n_Logic0_}), .CI(n_Logic0_), .SUM(
        fuo_if_root) );
  sqroot_seq_NBITS16_DW01_inc_1 add_143 ( .A({root_reg, sqroot}), .SUM(
        fuo_round) );
  sqroot_seq_NBITS16_DW01_sub_4 sub_0_root_sub_0_root_sub_139 ( .A({N88, N87, 
        N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73}), 
        .B({root_reg, sqroot}), .CI(n_Logic0_), .DIFF(fuo_if_res) );
  sqroot_seq_NBITS16_DW01_sub_5 sub_1_root_sub_0_root_sub_139 ( .A(res_reg), 
        .B({n_Logic0_, delta_reg[14], n_Logic0_, delta_reg[12:0]}), .CI(
        n_Logic0_), .DIFF({N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, 
        N78, N77, N76, N75, N74, N73}) );
  sqroot_seq_NBITS16_DW01_add_7 add_111 ( .A(root_next), .B({n_Logic0_, 
        delta_next[14], n_Logic0_, delta_next[12:0]}), .CI(n_Logic0_), .SUM({
        N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, 
        N43, N42}) );
  DFC3 res_reg_reg_11_ ( .D(res_next[11]), .C(clk), .RN(nRst), .Q(res_reg[11]), 
        .QN(n140) );
  DFC1 res_reg_reg_12_ ( .D(n151), .C(clk), .RN(nRst), .Q(res_reg[12]), .QN(
        n181) );
  DFC1 res_reg_reg_15_ ( .D(res_next[15]), .C(clk), .RN(nRst), .Q(res_reg[15])
         );
  DFC3 res_reg_reg_10_ ( .D(n167), .C(clk), .RN(nRst), .Q(res_reg[10]), .QN(
        n135) );
  DFC1 state_reg_reg_0_ ( .D(n400), .C(clk), .RN(nRst), .Q(state_reg[0]), .QN(
        n33) );
  DFC1 res_reg_reg_13_ ( .D(n147), .C(clk), .RN(nRst), .Q(res_reg[13]), .QN(
        n183) );
  DFC1 res_reg_reg_14_ ( .D(n128), .C(clk), .RN(nRst), .Q(res_reg[14]), .QN(
        n185) );
  DFC3 root_reg_reg_15_ ( .D(root_next[15]), .C(clk), .RN(nRst), .Q(
        root_reg[15]) );
  DFC3 root_reg_reg_1_ ( .D(root_next[1]), .C(clk), .RN(nRst), .Q(sqroot[1]), 
        .QN(n231) );
  OAI222 U148 ( .A(n37), .B(n159), .C(n39), .D(n163), .Q(delta_next[11]) );
  AOI222 U149 ( .A(fuo_if_res[9]), .B(n314), .C(arg[9]), .D(n313), .Q(n196) );
  INV3 U150 ( .A(N47), .Q(n331) );
  NOR24 U151 ( .A(n154), .B(n354), .Q(n356) );
  INV6 U152 ( .A(res_next[8]), .Q(n368) );
  NAND24 U153 ( .A(n359), .B(res_next[15]), .Q(n384) );
  CLKIN6 U154 ( .A(res_next[15]), .Q(n387) );
  NAND24 U155 ( .A(res_next[15]), .B(n247), .Q(n294) );
  NAND26 U156 ( .A(n186), .B(n157), .Q(res_next[15]) );
  AOI221 U157 ( .A(sqroot[8]), .B(ready), .C(fuo_round[8]), .D(n240), .Q(n216)
         );
  CLKIN12 U158 ( .A(n162), .Q(n163) );
  CLKBU8 U159 ( .A(n301), .Q(n159) );
  AOI221 U160 ( .A(root_reg[9]), .B(ready), .C(fuo_round[9]), .D(n240), .Q(
        n218) );
  INV8 U161 ( .A(n158), .Q(n228) );
  NAND22 U162 ( .A(n174), .B(n31), .Q(n301) );
  OAI311 U163 ( .A(n328), .B(n334), .C(n327), .D(n326), .Q(n346) );
  INV6 U164 ( .A(n129), .Q(sqroot[3]) );
  NAND22 U165 ( .A(n202), .B(n201), .Q(root_next[1]) );
  NAND24 U166 ( .A(n227), .B(n226), .Q(root_next[13]) );
  OAI222 U167 ( .A(res_next[3]), .B(n270), .C(n269), .D(n268), .Q(n271) );
  NAND24 U168 ( .A(n244), .B(n161), .Q(n316) );
  NAND22 U169 ( .A(n31), .B(n161), .Q(n198) );
  NOR31 U170 ( .A(state_reg[2]), .B(n235), .C(n131), .Q(n236) );
  OAI312 U171 ( .A(n303), .B(n304), .C(n160), .D(n302), .Q(n305) );
  CLKIN12 U172 ( .A(n160), .Q(n248) );
  BUF15 U173 ( .A(res_next[14]), .Q(n160) );
  NOR31 U174 ( .A(state_reg[2]), .B(n235), .C(n231), .Q(n200) );
  NAND23 U175 ( .A(n32), .B(n161), .Q(n235) );
  CLKIN4 U176 ( .A(N55), .Q(n355) );
  CLKIN6 U177 ( .A(res_next[13]), .Q(n369) );
  NOR21 U178 ( .A(n369), .B(root_next[13]), .Q(n149) );
  OAI2112 U179 ( .A(n335), .B(n334), .C(n337), .D(n343), .Q(n345) );
  NAND23 U180 ( .A(n207), .B(n206), .Q(root_next[3]) );
  CLKIN6 U181 ( .A(res_next[10]), .Q(n166) );
  AOI222 U182 ( .A(fuo_if_res[10]), .B(n314), .C(arg[10]), .D(n313), .Q(n178)
         );
  AOI2112 U183 ( .A(root_next[15]), .B(n387), .C(n159), .D(n300), .Q(n302) );
  INV6 U184 ( .A(n203), .Q(n240) );
  NAND21 U185 ( .A(n343), .B(n342), .Q(n344) );
  NAND22 U186 ( .A(n254), .B(res_next[9]), .Q(n152) );
  INV6 U187 ( .A(n316), .Q(n162) );
  AOI221 U188 ( .A(fuo_if_res[12]), .B(n314), .C(arg[12]), .D(n313), .Q(n180)
         );
  NAND23 U189 ( .A(n225), .B(n224), .Q(root_next[12]) );
  NAND24 U190 ( .A(n167), .B(n363), .Q(n365) );
  NAND23 U191 ( .A(n147), .B(n355), .Q(n374) );
  NOR22 U192 ( .A(n390), .B(n353), .Q(n153) );
  NAND24 U193 ( .A(res_next[11]), .B(n257), .Q(n250) );
  INV3 U194 ( .A(n143), .Q(n144) );
  NOR23 U195 ( .A(n385), .B(n390), .Q(n394) );
  INV12 U196 ( .A(n176), .Q(n314) );
  AOI221 U197 ( .A(n243), .B(state_reg[2]), .C(n32), .D(state_reg[1]), .Q(n244) );
  INV6 U198 ( .A(n166), .Q(n167) );
  AOI221 U199 ( .A(fuo_if_res[4]), .B(n314), .C(arg[4]), .D(n313), .Q(n191) );
  NAND23 U200 ( .A(n205), .B(n204), .Q(root_next[2]) );
  NAND24 U201 ( .A(n209), .B(n208), .Q(root_next[4]) );
  NAND24 U202 ( .A(n214), .B(n215), .Q(root_next[7]) );
  NAND23 U203 ( .A(n217), .B(n216), .Q(root_next[8]) );
  NAND23 U204 ( .A(n230), .B(n229), .Q(root_next[14]) );
  INV3 U205 ( .A(n149), .Q(n311) );
  NAND22 U206 ( .A(n366), .B(n365), .Q(n372) );
  BUF2 U207 ( .A(n160), .Q(n128) );
  AOI221 U208 ( .A(fuo_if_res[2]), .B(n314), .C(arg[2]), .D(n313), .Q(n189) );
  OAI221 U209 ( .A(res_next[8]), .B(n288), .C(res_next[9]), .D(n254), .Q(n259)
         );
  CLKIN6 U210 ( .A(n402), .Q(n129) );
  CLKIN0 U211 ( .A(res_next[11]), .Q(n361) );
  INV3 U212 ( .A(n175), .Q(n197) );
  INV6 U213 ( .A(n164), .Q(sqroot[2]) );
  NAND22 U214 ( .A(n237), .B(n161), .Q(n203) );
  NAND22 U215 ( .A(n351), .B(n31), .Q(n390) );
  BUF6 U216 ( .A(n33), .Q(n161) );
  AOI221 U217 ( .A(root_reg[11]), .B(ready), .C(fuo_round[11]), .D(n240), .Q(
        n222) );
  CLKIN3 U218 ( .A(res_next[9]), .Q(n367) );
  OAI221 U219 ( .A(res_next[7]), .B(n319), .C(n318), .D(n317), .Q(n358) );
  INV2 U220 ( .A(n277), .Q(n287) );
  AOI222 U221 ( .A(sqroot[4]), .B(ready), .C(fuo_round[4]), .D(n240), .Q(n208)
         );
  INV3 U222 ( .A(res_next[2]), .Q(n321) );
  OAI212 U223 ( .A(n197), .B(n142), .C(n189), .Q(res_next[2]) );
  CLKIN3 U224 ( .A(n363), .Q(n143) );
  NAND20 U225 ( .A(n375), .B(n384), .Q(n397) );
  INV6 U226 ( .A(n384), .Q(n385) );
  NOR21 U227 ( .A(N57), .B(n161), .Q(n389) );
  INV6 U228 ( .A(n360), .Q(n370) );
  NAND22 U229 ( .A(n361), .B(N53), .Q(n362) );
  BUF2 U230 ( .A(root_next[6]), .Q(n145) );
  NAND24 U231 ( .A(n213), .B(n212), .Q(root_next[6]) );
  BUF2 U232 ( .A(root_next[5]), .Q(n146) );
  NAND26 U233 ( .A(n211), .B(n210), .Q(root_next[5]) );
  CLKIN3 U234 ( .A(delta_reg[3]), .Q(n168) );
  CLKBU12 U235 ( .A(n312), .Q(n150) );
  OAI211 U236 ( .A(n197), .B(n183), .C(n182), .Q(n147) );
  CLKIN6 U237 ( .A(N51), .Q(n352) );
  NAND23 U238 ( .A(n312), .B(n293), .Q(n307) );
  NAND20 U239 ( .A(res_next[8]), .B(n288), .Q(n289) );
  INV6 U240 ( .A(N52), .Q(n363) );
  NAND23 U241 ( .A(n223), .B(n222), .Q(root_next[11]) );
  NAND22 U242 ( .A(N55), .B(n369), .Q(n378) );
  AOI222 U243 ( .A(fuo_if_root[13]), .B(n314), .C(root_reg[14]), .D(n228), .Q(
        n227) );
  OAI221 U244 ( .A(n272), .B(n271), .C(root_next[4]), .D(n279), .Q(n276) );
  BUF2 U245 ( .A(res_next[12]), .Q(n151) );
  INV2 U246 ( .A(n373), .Q(n379) );
  NAND24 U247 ( .A(n252), .B(n152), .Q(n253) );
  NAND22 U248 ( .A(n219), .B(n218), .Q(root_next[9]) );
  INV6 U249 ( .A(n253), .Q(n293) );
  NOR21 U250 ( .A(res_next[12]), .B(n364), .Q(n382) );
  CLKIN6 U251 ( .A(n250), .Q(n256) );
  CLKIN6 U252 ( .A(n153), .Q(n154) );
  NAND32 U253 ( .A(n360), .B(n373), .C(n365), .Q(n354) );
  NAND22 U254 ( .A(root_next[10]), .B(n166), .Q(n255) );
  AOI221 U255 ( .A(root_reg[13]), .B(ready), .C(fuo_round[13]), .D(n240), .Q(
        n226) );
  AOI221 U256 ( .A(root_reg[14]), .B(ready), .C(fuo_round[14]), .D(n240), .Q(
        n229) );
  INV3 U257 ( .A(N53), .Q(n347) );
  AOI222 U258 ( .A(sqroot[6]), .B(ready), .C(fuo_round[6]), .D(n240), .Q(n212)
         );
  AOI222 U259 ( .A(sqroot[5]), .B(ready), .C(fuo_round[5]), .D(n240), .Q(n210)
         );
  AOI222 U260 ( .A(fuo_if_root[3]), .B(n314), .C(sqroot[4]), .D(n228), .Q(n207) );
  AOI312 U261 ( .A(n369), .B(root_next[13]), .C(n312), .D(n305), .Q(n306) );
  NAND26 U262 ( .A(n221), .B(n220), .Q(root_next[10]) );
  AOI221 U263 ( .A(root_reg[12]), .B(ready), .C(fuo_round[12]), .D(n240), .Q(
        n224) );
  OAI222 U264 ( .A(res_next[11]), .B(n257), .C(n255), .D(n256), .Q(n258) );
  OAI221 U265 ( .A(root_next[2]), .B(n321), .C(root_next[1]), .D(n265), .Q(
        n267) );
  INV12 U266 ( .A(n348), .Q(ready) );
  AOI2111 U267 ( .A(root_next[1]), .B(n265), .C(root_next[0]), .D(n264), .Q(
        n266) );
  NAND22 U268 ( .A(res_next[12]), .B(n262), .Q(n290) );
  AOI222 U269 ( .A(fuo_if_root[5]), .B(n314), .C(sqroot[6]), .D(n228), .Q(n211) );
  AOI221 U270 ( .A(sqroot[3]), .B(ready), .C(fuo_round[3]), .D(n240), .Q(n206)
         );
  AOI222 U271 ( .A(fuo_if_root[7]), .B(n314), .C(sqroot[8]), .D(n228), .Q(n215) );
  AOI221 U272 ( .A(fuo_if_root[12]), .B(n314), .C(root_reg[13]), .D(n228), .Q(
        n225) );
  NAND22 U273 ( .A(n242), .B(n241), .Q(root_next[15]) );
  INV0 U274 ( .A(root_next[14]), .Q(n303) );
  INV3 U275 ( .A(root_next[15]), .Q(n247) );
  AOI221 U276 ( .A(fuo_if_res[3]), .B(n314), .C(arg[3]), .D(n313), .Q(n190) );
  OAI222 U277 ( .A(n276), .B(n275), .C(res_next[7]), .D(n274), .Q(n292) );
  OAI312 U278 ( .A(n287), .B(res_next[6]), .C(n286), .D(n285), .Q(n291) );
  INV6 U279 ( .A(n155), .Q(n156) );
  AOI222 U280 ( .A(fuo_if_root[14]), .B(n314), .C(root_reg[15]), .D(n228), .Q(
        n230) );
  NAND22 U281 ( .A(n175), .B(res_reg[15]), .Q(n157) );
  NAND22 U282 ( .A(n384), .B(n374), .Q(n377) );
  CLKIN0 U283 ( .A(n332), .Q(n317) );
  INV2 U284 ( .A(N46), .Q(n340) );
  NOR20 U285 ( .A(res_next[1]), .B(n325), .Q(n328) );
  NAND20 U286 ( .A(N47), .B(n338), .Q(n339) );
  INV0 U287 ( .A(res_next[5]), .Q(n338) );
  NAND24 U288 ( .A(n31), .B(n173), .Q(n348) );
  AOI221 U289 ( .A(N50), .B(n368), .C(N51), .D(n367), .Q(n371) );
  NAND20 U290 ( .A(N48), .B(n333), .Q(n318) );
  INV3 U291 ( .A(n337), .Q(n341) );
  INV3 U292 ( .A(N42), .Q(n324) );
  NOR31 U293 ( .A(n267), .B(n269), .C(n266), .Q(n272) );
  INV3 U294 ( .A(n246), .Q(n313) );
  INV3 U295 ( .A(n336), .Q(n343) );
  INV3 U296 ( .A(N57), .Q(n359) );
  AOI2111 U297 ( .A(res_next[1]), .B(n325), .C(n324), .D(res_next[0]), .Q(n327) );
  NAND22 U298 ( .A(res_next[4]), .B(n340), .Q(n326) );
  NAND41 U299 ( .A(n298), .B(n297), .C(n296), .D(n295), .Q(n299) );
  NOR21 U300 ( .A(delta_next[14]), .B(delta_next[12]), .Q(n295) );
  NOR40 U301 ( .A(delta_next[11]), .B(delta_next[10]), .C(delta_next[9]), .D(
        delta_next[8]), .Q(n296) );
  NOR30 U302 ( .A(state_reg[2]), .B(n232), .C(n231), .Q(n233) );
  INV3 U303 ( .A(n390), .Q(n391) );
  INV3 U304 ( .A(n273), .Q(n284) );
  AOI211 U305 ( .A(res_next[2]), .B(n330), .C(n329), .Q(n335) );
  INV3 U306 ( .A(N44), .Q(n330) );
  OAI310 U307 ( .A(n350), .B(state_reg[2]), .C(n32), .D(n315), .Q(n126) );
  NOR20 U308 ( .A(n314), .B(n313), .Q(n315) );
  AOI310 U309 ( .A(state_reg[1]), .B(state_reg[0]), .C(n350), .D(n349), .Q(
        n351) );
  AOI221 U310 ( .A(fuo_if_res[5]), .B(n314), .C(arg[5]), .D(n313), .Q(n192) );
  AOI220 U311 ( .A(fuo_if_res[1]), .B(n314), .C(arg[1]), .D(n313), .Q(n187) );
  AOI220 U312 ( .A(fuo_if_root[15]), .B(n314), .C(root_reg[15]), .D(ready), 
        .Q(n242) );
  NAND22 U313 ( .A(n239), .B(n238), .Q(root_next[0]) );
  AOI220 U314 ( .A(fuo_if_res[0]), .B(n314), .C(arg[0]), .D(n313), .Q(n177) );
  NOR30 U315 ( .A(state_reg[2]), .B(n232), .C(n132), .Q(n199) );
  NOR20 U316 ( .A(start), .B(n348), .Q(n349) );
  LOGIC0 U317 ( .Q(n_Logic0_) );
  LOGIC1 U318 ( .Q(n37) );
  INV0 U319 ( .A(root_next[8]), .Q(n288) );
  INV0 U320 ( .A(n145), .Q(n286) );
  BUF6 U321 ( .A(n301), .Q(n158) );
  OAI212 U322 ( .A(n145), .B(n333), .C(n277), .Q(n273) );
  NAND22 U323 ( .A(res_next[11]), .B(n347), .Q(n360) );
  NOR21 U324 ( .A(n160), .B(n386), .Q(n393) );
  AOI310 U325 ( .A(fuo_if_root[0]), .B(state_reg[1]), .C(n234), .D(n233), .Q(
        n239) );
  INV6 U326 ( .A(res_next[6]), .Q(n333) );
  CLKIN6 U327 ( .A(n403), .Q(n164) );
  NOR40 U328 ( .A(delta_next[3]), .B(delta_next[2]), .C(delta_next[1]), .D(
        delta_next[0]), .Q(n298) );
  AOI221 U329 ( .A(root_reg[10]), .B(ready), .C(fuo_round[10]), .D(n240), .Q(
        n220) );
  NOR40 U330 ( .A(delta_next[7]), .B(delta_next[6]), .C(delta_next[5]), .D(
        delta_next[4]), .Q(n297) );
  NAND31 U331 ( .A(state_reg[0]), .B(n32), .C(n31), .Q(n246) );
  NAND32 U332 ( .A(state_reg[1]), .B(n161), .C(n31), .Q(n176) );
  INV3 U333 ( .A(n294), .Q(n304) );
  NAND22 U334 ( .A(n375), .B(n391), .Q(n376) );
  NAND24 U335 ( .A(res_next[12]), .B(n364), .Q(n373) );
  CLKIN0 U336 ( .A(root_next[10]), .Q(n251) );
  AOI212 U337 ( .A(n167), .B(n251), .C(n256), .Q(n252) );
  NAND31 U338 ( .A(n203), .B(n348), .C(n159), .Q(n175) );
  INV0 U339 ( .A(root_next[9]), .Q(n254) );
  INV0 U340 ( .A(root_next[7]), .Q(n274) );
  CLKIN2 U341 ( .A(delta_reg[5]), .Q(n171) );
  INV2 U342 ( .A(root_next[11]), .Q(n257) );
  AOI220 U343 ( .A(sqroot[7]), .B(ready), .C(fuo_round[7]), .D(n240), .Q(n214)
         );
  NOR21 U344 ( .A(n389), .B(n388), .Q(n392) );
  INV6 U345 ( .A(n168), .Q(n169) );
  NAND21 U346 ( .A(root_next[4]), .B(n279), .Q(n280) );
  AOI221 U347 ( .A(fuo_if_root[2]), .B(n314), .C(sqroot[3]), .D(n228), .Q(n205) );
  AOI311 U348 ( .A(fuo_round[1]), .B(n237), .C(n161), .D(n200), .Q(n201) );
  AOI311 U349 ( .A(fuo_if_root[1]), .B(state_reg[1]), .C(n234), .D(n199), .Q(
        n202) );
  INV6 U350 ( .A(n171), .Q(n172) );
  AOI221 U351 ( .A(sqroot[2]), .B(ready), .C(fuo_round[2]), .D(n240), .Q(n204)
         );
  INV2 U352 ( .A(n146), .Q(n282) );
  INV6 U353 ( .A(n249), .Q(n312) );
  NOR21 U354 ( .A(n161), .B(n387), .Q(n388) );
  NAND21 U355 ( .A(root_next[2]), .B(n321), .Q(n268) );
  AOI310 U356 ( .A(fuo_round[0]), .B(n237), .C(n161), .D(n236), .Q(n238) );
  INV2 U357 ( .A(root_next[12]), .Q(n262) );
  INV0 U358 ( .A(n156), .Q(n245) );
  NAND22 U359 ( .A(state_reg[2]), .B(n32), .Q(n243) );
  CLKIN3 U360 ( .A(n243), .Q(n237) );
  CLKIN3 U361 ( .A(n235), .Q(n173) );
  NAND22 U362 ( .A(state_reg[0]), .B(state_reg[1]), .Q(n232) );
  CLKIN3 U363 ( .A(n232), .Q(n174) );
  OAI212 U364 ( .A(n197), .B(n136), .C(n177), .Q(res_next[0]) );
  OAI212 U365 ( .A(n197), .B(n135), .C(n178), .Q(res_next[10]) );
  AOI222 U366 ( .A(fuo_if_res[11]), .B(n314), .C(arg[11]), .D(n313), .Q(n179)
         );
  OAI212 U367 ( .A(n197), .B(n140), .C(n179), .Q(res_next[11]) );
  OAI212 U368 ( .A(n197), .B(n181), .C(n180), .Q(res_next[12]) );
  AOI222 U369 ( .A(fuo_if_res[13]), .B(n314), .C(arg[13]), .D(n313), .Q(n182)
         );
  OAI212 U370 ( .A(n197), .B(n183), .C(n182), .Q(res_next[13]) );
  AOI222 U371 ( .A(fuo_if_res[14]), .B(n314), .C(arg[14]), .D(n313), .Q(n184)
         );
  OAI212 U372 ( .A(n197), .B(n185), .C(n184), .Q(res_next[14]) );
  AOI222 U373 ( .A(fuo_if_res[15]), .B(n314), .C(arg[15]), .D(n313), .Q(n186)
         );
  OAI212 U374 ( .A(n197), .B(n188), .C(n187), .Q(res_next[1]) );
  OAI212 U375 ( .A(n197), .B(n148), .C(n190), .Q(res_next[3]) );
  OAI212 U376 ( .A(n197), .B(n133), .C(n191), .Q(res_next[4]) );
  OAI212 U377 ( .A(n197), .B(n138), .C(n192), .Q(res_next[5]) );
  AOI222 U378 ( .A(fuo_if_res[6]), .B(n314), .C(arg[6]), .D(n313), .Q(n193) );
  OAI212 U379 ( .A(n197), .B(n137), .C(n193), .Q(res_next[6]) );
  AOI222 U380 ( .A(fuo_if_res[7]), .B(n314), .C(arg[7]), .D(n313), .Q(n194) );
  OAI212 U381 ( .A(n197), .B(n134), .C(n194), .Q(res_next[7]) );
  AOI222 U382 ( .A(fuo_if_res[8]), .B(n314), .C(arg[8]), .D(n313), .Q(n195) );
  OAI212 U383 ( .A(n197), .B(n141), .C(n195), .Q(res_next[8]) );
  OAI212 U384 ( .A(n197), .B(n139), .C(n196), .Q(res_next[9]) );
  CLKIN3 U385 ( .A(n198), .Q(n234) );
  AOI222 U386 ( .A(fuo_if_root[4]), .B(n314), .C(sqroot[5]), .D(n228), .Q(n209) );
  AOI222 U387 ( .A(fuo_if_root[6]), .B(n314), .C(sqroot[7]), .D(n228), .Q(n213) );
  AOI222 U388 ( .A(fuo_if_root[8]), .B(n314), .C(root_reg[9]), .D(n228), .Q(
        n217) );
  AOI222 U389 ( .A(fuo_if_root[9]), .B(n314), .C(root_reg[10]), .D(n228), .Q(
        n219) );
  AOI222 U390 ( .A(fuo_if_root[10]), .B(n314), .C(root_reg[11]), .D(n228), .Q(
        n221) );
  AOI222 U391 ( .A(fuo_if_root[11]), .B(n314), .C(root_reg[12]), .D(n228), .Q(
        n223) );
  NAND22 U392 ( .A(fuo_round[15]), .B(n240), .Q(n241) );
  OAI222 U393 ( .A(n48), .B(n159), .C(n163), .D(n170), .Q(delta_next[0]) );
  OAI222 U394 ( .A(n47), .B(n159), .C(n316), .D(n245), .Q(delta_next[1]) );
  OAI222 U395 ( .A(n46), .B(n159), .C(n48), .D(n163), .Q(delta_next[2]) );
  OAI222 U396 ( .A(n45), .B(n159), .C(n47), .D(n163), .Q(delta_next[3]) );
  OAI222 U397 ( .A(n44), .B(n159), .C(n46), .D(n163), .Q(delta_next[4]) );
  OAI222 U398 ( .A(n43), .B(n159), .C(n45), .D(n163), .Q(delta_next[5]) );
  OAI222 U399 ( .A(n42), .B(n159), .C(n44), .D(n316), .Q(delta_next[6]) );
  OAI222 U400 ( .A(n41), .B(n159), .C(n43), .D(n163), .Q(delta_next[7]) );
  OAI222 U401 ( .A(n40), .B(n159), .C(n42), .D(n163), .Q(delta_next[8]) );
  OAI222 U402 ( .A(n39), .B(n159), .C(n41), .D(n163), .Q(delta_next[9]) );
  OAI222 U403 ( .A(n38), .B(n159), .C(n40), .D(n163), .Q(delta_next[10]) );
  OAI222 U404 ( .A(n36), .B(n159), .C(n38), .D(n316), .Q(delta_next[12]) );
  OAI212 U405 ( .A(n36), .B(n316), .C(n246), .Q(delta_next[14]) );
  OAI212 U406 ( .A(root_next[14]), .B(n248), .C(n294), .Q(n249) );
  AOI212 U407 ( .A(n293), .B(n259), .C(n258), .Q(n261) );
  CLKIN3 U408 ( .A(n290), .Q(n260) );
  OAI222 U409 ( .A(n151), .B(n262), .C(n261), .D(n260), .Q(n310) );
  CLKIN3 U410 ( .A(res_next[1]), .Q(n265) );
  CLKIN3 U411 ( .A(root_next[3]), .Q(n270) );
  NAND22 U412 ( .A(res_next[3]), .B(n270), .Q(n263) );
  CLKIN3 U413 ( .A(n263), .Q(n269) );
  CLKIN3 U414 ( .A(res_next[0]), .Q(n264) );
  CLKIN3 U415 ( .A(res_next[4]), .Q(n279) );
  NAND22 U416 ( .A(res_next[7]), .B(n274), .Q(n277) );
  NAND22 U417 ( .A(res_next[5]), .B(n282), .Q(n278) );
  NAND22 U418 ( .A(n284), .B(n278), .Q(n275) );
  CLKIN3 U419 ( .A(n278), .Q(n281) );
  OAI222 U420 ( .A(res_next[5]), .B(n282), .C(n281), .D(n280), .Q(n283) );
  NAND22 U421 ( .A(n284), .B(n283), .Q(n285) );
  OAI2112 U422 ( .A(n292), .B(n291), .C(n290), .D(n289), .Q(n308) );
  CLKIN3 U423 ( .A(n299), .Q(n350) );
  NAND22 U424 ( .A(roundup), .B(n350), .Q(n300) );
  OAI312 U425 ( .A(n308), .B(n149), .C(n307), .D(n306), .Q(n309) );
  AOI312 U426 ( .A(n311), .B(n150), .C(n310), .D(n309), .Q(n401) );
  CLKIN3 U427 ( .A(N49), .Q(n319) );
  NAND22 U428 ( .A(res_next[7]), .B(n319), .Q(n332) );
  CLKIN3 U429 ( .A(N43), .Q(n325) );
  CLKIN3 U430 ( .A(N45), .Q(n323) );
  NAND22 U431 ( .A(res_next[3]), .B(n323), .Q(n320) );
  CLKIN3 U432 ( .A(n320), .Q(n329) );
  NAND22 U433 ( .A(N44), .B(n321), .Q(n322) );
  OAI222 U434 ( .A(res_next[3]), .B(n323), .C(n329), .D(n322), .Q(n334) );
  NAND22 U435 ( .A(res_next[5]), .B(n331), .Q(n337) );
  OAI212 U436 ( .A(N48), .B(n333), .C(n332), .Q(n336) );
  OAI312 U437 ( .A(n341), .B(res_next[4]), .C(n340), .D(n339), .Q(n342) );
  OAI212 U438 ( .A(n346), .B(n345), .C(n344), .Q(n357) );
  NAND22 U439 ( .A(res_next[9]), .B(n352), .Q(n366) );
  OAI212 U440 ( .A(N50), .B(n368), .C(n366), .Q(n353) );
  OAI2112 U441 ( .A(n358), .B(n357), .C(n356), .D(n374), .Q(n398) );
  CLKIN3 U442 ( .A(N56), .Q(n386) );
  NAND22 U443 ( .A(n160), .B(n386), .Q(n375) );
  OAI312 U444 ( .A(n144), .B(n167), .C(n370), .D(n362), .Q(n383) );
  CLKIN6 U445 ( .A(N54), .Q(n364) );
  OAI312 U446 ( .A(n372), .B(n371), .C(n370), .D(n378), .Q(n381) );
  AOI2112 U447 ( .A(n379), .B(n378), .C(n377), .D(n376), .Q(n380) );
  OAI312 U448 ( .A(n383), .B(n382), .C(n381), .D(n380), .Q(n396) );
  AOI222 U449 ( .A(n394), .B(n393), .C(n392), .D(n391), .Q(n395) );
  OAI2112 U450 ( .A(n397), .B(n398), .C(n396), .D(n395), .Q(n400) );
endmodule

