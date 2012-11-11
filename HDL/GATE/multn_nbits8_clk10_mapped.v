
module multn_NBITS8 ( clk, rst_b, start, a_in, b_in, ready, z_out );
  input [7:0] a_in;
  input [7:0] b_in;
  output [15:0] z_out;
  input clk, rst_b, start;
  output ready;
  wire   n24, n25, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120;
  wire   [1:0] state_reg;
  wire   [7:0] a_reg;
  wire   [7:0] b_reg;
  wire   [7:0] b_next;
  wire   [7:0] dec_out;
  wire   [15:0] add_out;
  wire   [14:1] add_112_carry;

  OAI212 U23 ( .A(n24), .B(n47), .C(n119), .Q(n46) );
  DFC3 state_reg_reg_0_ ( .D(n72), .C(clk), .RN(rst_b), .Q(state_reg[0]), .QN(
        n25) );
  DFC3 state_reg_reg_1_ ( .D(n73), .C(clk), .RN(rst_b), .Q(state_reg[1]), .QN(
        n24) );
  ADD32 add_112_U1_1 ( .A(a_reg[1]), .B(z_out[1]), .CI(add_112_carry[1]), .CO(
        add_112_carry[2]), .S(add_out[1]) );
  ADD32 add_112_U1_2 ( .A(a_reg[2]), .B(z_out[2]), .CI(add_112_carry[2]), .CO(
        add_112_carry[3]), .S(add_out[2]) );
  ADD32 add_112_U1_3 ( .A(a_reg[3]), .B(z_out[3]), .CI(add_112_carry[3]), .CO(
        add_112_carry[4]), .S(add_out[3]) );
  ADD32 add_112_U1_4 ( .A(a_reg[4]), .B(z_out[4]), .CI(add_112_carry[4]), .CO(
        add_112_carry[5]), .S(add_out[4]) );
  ADD32 add_112_U1_5 ( .A(a_reg[5]), .B(z_out[5]), .CI(add_112_carry[5]), .CO(
        add_112_carry[6]), .S(add_out[5]) );
  ADD32 add_112_U1_6 ( .A(a_reg[6]), .B(z_out[6]), .CI(add_112_carry[6]), .CO(
        add_112_carry[7]), .S(add_out[6]) );
  ADD32 add_112_U1_7 ( .A(a_reg[7]), .B(z_out[7]), .CI(add_112_carry[7]), .CO(
        add_112_carry[8]), .S(add_out[7]) );
  DFEC1 a_reg_reg_6_ ( .D(a_in[6]), .E(n48), .C(clk), .RN(rst_b), .Q(a_reg[6])
         );
  DFEC1 a_reg_reg_7_ ( .D(a_in[7]), .E(n48), .C(clk), .RN(rst_b), .Q(a_reg[7])
         );
  DFEC1 a_reg_reg_3_ ( .D(a_in[3]), .E(n48), .C(clk), .RN(rst_b), .Q(a_reg[3])
         );
  DFEC1 a_reg_reg_4_ ( .D(a_in[4]), .E(n48), .C(clk), .RN(rst_b), .Q(a_reg[4])
         );
  DFEC1 a_reg_reg_5_ ( .D(a_in[5]), .E(n48), .C(clk), .RN(rst_b), .Q(a_reg[5])
         );
  DFEC1 a_reg_reg_1_ ( .D(a_in[1]), .E(n48), .C(clk), .RN(rst_b), .Q(a_reg[1])
         );
  DFEC1 a_reg_reg_2_ ( .D(a_in[2]), .E(n48), .C(clk), .RN(rst_b), .Q(a_reg[2])
         );
  DFEC1 a_reg_reg_0_ ( .D(a_in[0]), .E(n48), .C(clk), .RN(rst_b), .Q(a_reg[0])
         );
  DFC1 z_reg_reg_2_ ( .D(n112), .C(clk), .RN(rst_b), .Q(z_out[2]) );
  DFC1 z_reg_reg_1_ ( .D(n113), .C(clk), .RN(rst_b), .Q(z_out[1]) );
  DFC1 z_reg_reg_0_ ( .D(n114), .C(clk), .RN(rst_b), .Q(z_out[0]) );
  DFC1 z_reg_reg_3_ ( .D(n111), .C(clk), .RN(rst_b), .Q(z_out[3]) );
  DFC1 b_reg_reg_2_ ( .D(b_next[2]), .C(clk), .RN(rst_b), .Q(b_reg[2]), .QN(
        n94) );
  DFC1 b_reg_reg_1_ ( .D(b_next[1]), .C(clk), .RN(rst_b), .Q(b_reg[1]), .QN(
        n95) );
  DFC1 b_reg_reg_0_ ( .D(b_next[0]), .C(clk), .RN(rst_b), .Q(b_reg[0]), .QN(
        dec_out[0]) );
  DFC1 z_reg_reg_4_ ( .D(n110), .C(clk), .RN(rst_b), .Q(z_out[4]) );
  DFC1 b_reg_reg_3_ ( .D(b_next[3]), .C(clk), .RN(rst_b), .Q(b_reg[3]), .QN(
        n93) );
  DFC1 z_reg_reg_5_ ( .D(n109), .C(clk), .RN(rst_b), .Q(z_out[5]) );
  DFC1 z_reg_reg_6_ ( .D(n108), .C(clk), .RN(rst_b), .Q(z_out[6]) );
  DFC1 b_reg_reg_4_ ( .D(b_next[4]), .C(clk), .RN(rst_b), .Q(b_reg[4]) );
  DFC1 z_reg_reg_7_ ( .D(n107), .C(clk), .RN(rst_b), .Q(z_out[7]) );
  DFC1 b_reg_reg_5_ ( .D(b_next[5]), .C(clk), .RN(rst_b), .Q(b_reg[5]), .QN(
        n92) );
  DFC1 b_reg_reg_6_ ( .D(b_next[6]), .C(clk), .RN(rst_b), .Q(b_reg[6]) );
  DFC1 z_reg_reg_8_ ( .D(n106), .C(clk), .RN(rst_b), .Q(z_out[8]) );
  DFC1 b_reg_reg_7_ ( .D(b_next[7]), .C(clk), .RN(rst_b), .Q(b_reg[7]) );
  DFC1 z_reg_reg_9_ ( .D(n105), .C(clk), .RN(rst_b), .Q(z_out[9]) );
  DFC1 z_reg_reg_10_ ( .D(n104), .C(clk), .RN(rst_b), .Q(z_out[10]) );
  DFC1 z_reg_reg_11_ ( .D(n103), .C(clk), .RN(rst_b), .Q(z_out[11]) );
  DFC1 z_reg_reg_12_ ( .D(n102), .C(clk), .RN(rst_b), .Q(z_out[12]) );
  DFC1 z_reg_reg_13_ ( .D(n101), .C(clk), .RN(rst_b), .Q(z_out[13]) );
  DFC1 z_reg_reg_14_ ( .D(n100), .C(clk), .RN(rst_b), .Q(z_out[14]) );
  DFC1 z_reg_reg_15_ ( .D(n99), .C(clk), .RN(rst_b), .Q(z_out[15]) );
  INV3 U82 ( .A(n27), .Q(n99) );
  AOI221 U83 ( .A(add_out[15]), .B(n83), .C(z_out[15]), .D(n84), .Q(n27) );
  INV3 U84 ( .A(n87), .Q(n97) );
  INV3 U85 ( .A(n85), .Q(n96) );
  INV3 U86 ( .A(n50), .Q(n117) );
  NOR40 U87 ( .A(b_next[4]), .B(b_next[5]), .C(b_next[6]), .D(b_next[7]), .Q(
        n50) );
  NOR21 U88 ( .A(b_next[2]), .B(b_next[3]), .Q(n49) );
  BUF2 U89 ( .A(n28), .Q(n83) );
  BUF2 U90 ( .A(ready), .Q(n84) );
  INV3 U91 ( .A(n48), .Q(n119) );
  NOR40 U92 ( .A(n117), .B(n118), .C(b_next[1]), .D(b_next[0]), .Q(n47) );
  INV3 U93 ( .A(n49), .Q(n118) );
  INV3 U94 ( .A(n29), .Q(n100) );
  AOI221 U95 ( .A(add_out[14]), .B(n83), .C(z_out[14]), .D(ready), .Q(n29) );
  XOR21 U96 ( .A(add_112_carry[14]), .B(z_out[14]), .Q(add_out[14]) );
  INV3 U97 ( .A(n30), .Q(n101) );
  AOI221 U98 ( .A(add_out[13]), .B(n28), .C(z_out[13]), .D(n84), .Q(n30) );
  XOR21 U99 ( .A(add_112_carry[13]), .B(z_out[13]), .Q(add_out[13]) );
  INV3 U100 ( .A(n31), .Q(n102) );
  AOI221 U101 ( .A(add_out[12]), .B(n28), .C(z_out[12]), .D(n84), .Q(n31) );
  XOR21 U102 ( .A(add_112_carry[12]), .B(z_out[12]), .Q(add_out[12]) );
  OAI311 U103 ( .A(n115), .B(state_reg[0]), .C(n44), .D(n116), .Q(n73) );
  INV3 U104 ( .A(n46), .Q(n116) );
  INV3 U105 ( .A(n75), .Q(add_112_carry[1]) );
  NAND22 U106 ( .A(z_out[0]), .B(a_reg[0]), .Q(n75) );
  NAND22 U107 ( .A(n60), .B(n61), .Q(b_next[5]) );
  NAND22 U108 ( .A(b_reg[5]), .B(n24), .Q(n61) );
  AOI221 U109 ( .A(dec_out[5]), .B(n83), .C(b_in[5]), .D(n48), .Q(n60) );
  NAND22 U110 ( .A(n56), .B(n57), .Q(b_next[7]) );
  NAND22 U111 ( .A(b_reg[7]), .B(n24), .Q(n57) );
  AOI221 U112 ( .A(dec_out[7]), .B(n83), .C(b_in[7]), .D(n48), .Q(n56) );
  NAND22 U113 ( .A(n58), .B(n59), .Q(b_next[6]) );
  NAND22 U114 ( .A(b_reg[6]), .B(n24), .Q(n59) );
  AOI221 U115 ( .A(dec_out[6]), .B(n83), .C(b_in[6]), .D(n48), .Q(n58) );
  NAND22 U116 ( .A(n62), .B(n63), .Q(b_next[4]) );
  NAND22 U117 ( .A(b_reg[4]), .B(n24), .Q(n63) );
  AOI221 U118 ( .A(dec_out[4]), .B(n83), .C(b_in[4]), .D(n48), .Q(n62) );
  INV3 U119 ( .A(n88), .Q(dec_out[4]) );
  INV3 U120 ( .A(n86), .Q(n98) );
  INV3 U121 ( .A(n78), .Q(add_112_carry[11]) );
  NAND22 U122 ( .A(z_out[10]), .B(add_112_carry[10]), .Q(n78) );
  NAND22 U123 ( .A(z_out[14]), .B(add_112_carry[14]), .Q(n82) );
  INV3 U124 ( .A(n76), .Q(add_112_carry[9]) );
  NAND22 U125 ( .A(z_out[8]), .B(add_112_carry[8]), .Q(n76) );
  INV3 U126 ( .A(n77), .Q(add_112_carry[10]) );
  NAND22 U127 ( .A(z_out[9]), .B(add_112_carry[9]), .Q(n77) );
  INV3 U128 ( .A(n79), .Q(add_112_carry[12]) );
  NAND22 U129 ( .A(z_out[11]), .B(add_112_carry[11]), .Q(n79) );
  INV3 U130 ( .A(n80), .Q(add_112_carry[13]) );
  NAND22 U131 ( .A(z_out[12]), .B(add_112_carry[12]), .Q(n80) );
  INV3 U132 ( .A(n81), .Q(add_112_carry[14]) );
  NAND22 U133 ( .A(z_out[13]), .B(add_112_carry[13]), .Q(n81) );
  NOR21 U134 ( .A(n44), .B(n45), .Q(n72) );
  AOI211 U135 ( .A(n115), .B(n25), .C(n46), .Q(n45) );
  XNR21 U136 ( .A(z_out[15]), .B(n82), .Q(add_out[15]) );
  INV3 U137 ( .A(n32), .Q(n103) );
  AOI221 U138 ( .A(add_out[11]), .B(n28), .C(z_out[11]), .D(n84), .Q(n32) );
  XOR21 U139 ( .A(add_112_carry[11]), .B(z_out[11]), .Q(add_out[11]) );
  INV3 U140 ( .A(n33), .Q(n104) );
  AOI221 U141 ( .A(add_out[10]), .B(n28), .C(z_out[10]), .D(n84), .Q(n33) );
  XOR21 U142 ( .A(add_112_carry[10]), .B(z_out[10]), .Q(add_out[10]) );
  INV3 U143 ( .A(n34), .Q(n105) );
  AOI221 U144 ( .A(add_out[9]), .B(n28), .C(z_out[9]), .D(n84), .Q(n34) );
  XOR21 U145 ( .A(add_112_carry[9]), .B(z_out[9]), .Q(add_out[9]) );
  INV3 U146 ( .A(n35), .Q(n106) );
  AOI221 U147 ( .A(add_out[8]), .B(n28), .C(z_out[8]), .D(ready), .Q(n35) );
  XOR21 U148 ( .A(add_112_carry[8]), .B(z_out[8]), .Q(add_out[8]) );
  NAND22 U149 ( .A(n64), .B(n65), .Q(b_next[3]) );
  NAND22 U150 ( .A(b_reg[3]), .B(n24), .Q(n65) );
  AOI221 U151 ( .A(dec_out[3]), .B(n83), .C(b_in[3]), .D(n48), .Q(n64) );
  NOR21 U152 ( .A(n25), .B(n24), .Q(n28) );
  NOR21 U153 ( .A(n24), .B(state_reg[0]), .Q(n48) );
  NAND22 U154 ( .A(n66), .B(n67), .Q(b_next[2]) );
  NAND22 U155 ( .A(b_reg[2]), .B(n24), .Q(n67) );
  AOI221 U156 ( .A(dec_out[2]), .B(n83), .C(b_in[2]), .D(n48), .Q(n66) );
  INV3 U157 ( .A(n36), .Q(n107) );
  AOI221 U158 ( .A(add_out[7]), .B(n28), .C(z_out[7]), .D(n84), .Q(n36) );
  INV3 U159 ( .A(n37), .Q(n108) );
  AOI221 U160 ( .A(add_out[6]), .B(n28), .C(z_out[6]), .D(ready), .Q(n37) );
  INV3 U161 ( .A(n38), .Q(n109) );
  AOI221 U162 ( .A(add_out[5]), .B(n28), .C(z_out[5]), .D(n84), .Q(n38) );
  INV3 U163 ( .A(n41), .Q(n112) );
  AOI221 U164 ( .A(add_out[2]), .B(n83), .C(z_out[2]), .D(ready), .Q(n41) );
  INV3 U165 ( .A(n42), .Q(n113) );
  AOI221 U166 ( .A(add_out[1]), .B(n83), .C(z_out[1]), .D(n84), .Q(n42) );
  INV3 U167 ( .A(n43), .Q(n114) );
  AOI221 U168 ( .A(add_out[0]), .B(n83), .C(z_out[0]), .D(ready), .Q(n43) );
  XOR21 U169 ( .A(a_reg[0]), .B(z_out[0]), .Q(add_out[0]) );
  NAND22 U170 ( .A(n68), .B(n69), .Q(b_next[1]) );
  NAND22 U171 ( .A(b_reg[1]), .B(n24), .Q(n69) );
  AOI221 U172 ( .A(dec_out[1]), .B(n83), .C(b_in[1]), .D(n48), .Q(n68) );
  NAND22 U173 ( .A(n70), .B(n71), .Q(b_next[0]) );
  NAND22 U174 ( .A(b_reg[0]), .B(n24), .Q(n71) );
  AOI221 U175 ( .A(dec_out[0]), .B(n83), .C(b_in[0]), .D(n48), .Q(n70) );
  INV3 U176 ( .A(n39), .Q(n110) );
  AOI221 U177 ( .A(add_out[4]), .B(n28), .C(z_out[4]), .D(ready), .Q(n39) );
  INV3 U178 ( .A(n40), .Q(n111) );
  AOI221 U179 ( .A(add_out[3]), .B(n83), .C(z_out[3]), .D(n84), .Q(n40) );
  NOR21 U180 ( .A(n120), .B(start), .Q(n44) );
  INV3 U181 ( .A(n84), .Q(n120) );
  NOR21 U182 ( .A(state_reg[1]), .B(state_reg[0]), .Q(ready) );
  NOR40 U183 ( .A(b_in[7]), .B(b_in[6]), .C(b_in[5]), .D(b_in[4]), .Q(n55) );
  NOR40 U184 ( .A(a_in[7]), .B(a_in[6]), .C(a_in[5]), .D(a_in[4]), .Q(n53) );
  INV3 U185 ( .A(n51), .Q(n115) );
  AOI221 U186 ( .A(n52), .B(n53), .C(n54), .D(n55), .Q(n51) );
  NOR40 U187 ( .A(a_in[3]), .B(a_in[2]), .C(a_in[1]), .D(a_in[0]), .Q(n52) );
  NOR40 U188 ( .A(b_in[3]), .B(b_in[2]), .C(b_in[1]), .D(b_in[0]), .Q(n54) );
  NOR20 U189 ( .A(b_reg[1]), .B(b_reg[0]), .Q(n85) );
  OAI210 U190 ( .A(dec_out[0]), .B(n95), .C(n96), .Q(dec_out[1]) );
  NOR20 U191 ( .A(n96), .B(b_reg[2]), .Q(n87) );
  OAI210 U192 ( .A(n85), .B(n94), .C(n97), .Q(dec_out[2]) );
  NOR20 U193 ( .A(n97), .B(b_reg[3]), .Q(n86) );
  OAI210 U194 ( .A(n87), .B(n93), .C(n98), .Q(dec_out[3]) );
  NOR20 U195 ( .A(n98), .B(b_reg[4]), .Q(n89) );
  AOI210 U196 ( .A(n98), .B(b_reg[4]), .C(n89), .Q(n88) );
  NAND20 U197 ( .A(n89), .B(n92), .Q(n90) );
  OAI210 U198 ( .A(n89), .B(n92), .C(n90), .Q(dec_out[5]) );
  XNR20 U199 ( .A(b_reg[6]), .B(n90), .Q(dec_out[6]) );
  NOR20 U200 ( .A(n90), .B(b_reg[6]), .Q(n91) );
  XOR20 U201 ( .A(n91), .B(b_reg[7]), .Q(dec_out[7]) );
endmodule

