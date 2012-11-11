
module sqroot_comb_NBITS8 ( arg, roundup, sqroot );
  input [7:0] arg;
  output [4:0] sqroot;
  input roundup;
  wire   N18, N50, N51, N52, N64, N65, N66, N67, N96, N97, N98, N99, N100,
         N110, N111, N112, N113, N114, N142, N143, N144, N145, N146, N147,
         N148, N167, N168, N169, N170, N91, N90, N89, N43, lt_gt_56_A_0_,
         lt_gt_56_A_1_, lt_gt_56_A_2_, lt_gt_56_A_3_, lte_47_I2_B_6_,
         lte_47_I2_B_7_, sub_0_root_sub_48_I2_carry_6_,
         sub_1_root_sub_48_I2_carry_7_, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248;
  wire   [3:2] add_57_carry;
  wire   [6:2] sub_1_root_sub_48_I4_carry;
  wire   [6:4] sub_0_root_sub_48_I3_carry;
  wire   [7:5] sub_1_root_sub_48_I3_carry;

  ADD22 add_57_U1_1_1 ( .A(lt_gt_56_A_1_), .B(lt_gt_56_A_0_), .CO(
        add_57_carry[2]), .S(N167) );
  ADD22 add_57_U1_1_2 ( .A(lt_gt_56_A_2_), .B(add_57_carry[2]), .CO(
        add_57_carry[3]), .S(N168) );
  ADD22 add_57_U1_1_3 ( .A(lt_gt_56_A_3_), .B(add_57_carry[3]), .CO(N170), .S(
        N169) );
  ADD32 sub_1_root_sub_48_I4_U2_2 ( .A(N110), .B(n248), .CI(
        sub_1_root_sub_48_I4_carry[2]), .CO(sub_1_root_sub_48_I4_carry[3]), 
        .S(N143) );
  ADD32 sub_1_root_sub_48_I4_U2_3 ( .A(N111), .B(n247), .CI(
        sub_1_root_sub_48_I4_carry[3]), .CO(sub_1_root_sub_48_I4_carry[4]), 
        .S(N144) );
  ADD32 sub_1_root_sub_48_I4_U2_4 ( .A(N112), .B(n246), .CI(
        sub_1_root_sub_48_I4_carry[4]), .CO(sub_1_root_sub_48_I4_carry[5]), 
        .S(N145) );
  ADD32 sub_1_root_sub_48_I3_U2_5 ( .A(N65), .B(n246), .CI(
        sub_1_root_sub_48_I3_carry[5]), .CO(sub_1_root_sub_48_I3_carry[6]), 
        .S(N90) );
  NAND31 U180 ( .A(n241), .B(n240), .C(n242), .Q(lt_gt_56_A_1_) );
  NOR21 U181 ( .A(arg[7]), .B(arg[6]), .Q(n246) );
  NOR21 U182 ( .A(sub_1_root_sub_48_I4_carry[6]), .B(N114), .Q(n199) );
  NOR21 U183 ( .A(sub_0_root_sub_48_I3_carry[6]), .B(N91), .Q(n205) );
  XNR21 U184 ( .A(n209), .B(n197), .Q(N52) );
  XOR21 U185 ( .A(sub_1_root_sub_48_I2_carry_7_), .B(lte_47_I2_B_7_), .Q(n197)
         );
  XNR21 U186 ( .A(N113), .B(sub_1_root_sub_48_I4_carry[5]), .Q(N146) );
  XNR21 U187 ( .A(N114), .B(sub_1_root_sub_48_I4_carry[6]), .Q(N147) );
  XNR21 U188 ( .A(N64), .B(n247), .Q(N89) );
  XNR21 U189 ( .A(N66), .B(sub_1_root_sub_48_I3_carry[6]), .Q(N91) );
  XNR21 U190 ( .A(n199), .B(n228), .Q(N148) );
  INV3 U191 ( .A(n200), .Q(sub_1_root_sub_48_I4_carry[6]) );
  NOR21 U192 ( .A(sub_1_root_sub_48_I4_carry[5]), .B(N113), .Q(n200) );
  INV3 U193 ( .A(n204), .Q(sub_0_root_sub_48_I3_carry[6]) );
  NOR21 U194 ( .A(sub_0_root_sub_48_I3_carry[5]), .B(N90), .Q(n204) );
  INV3 U195 ( .A(n206), .Q(sub_1_root_sub_48_I3_carry[7]) );
  NOR21 U196 ( .A(sub_1_root_sub_48_I3_carry[6]), .B(N66), .Q(n206) );
  XNR21 U197 ( .A(N90), .B(sub_0_root_sub_48_I3_carry[5]), .Q(N98) );
  XNR21 U198 ( .A(N91), .B(sub_0_root_sub_48_I3_carry[6]), .Q(N99) );
  XNR21 U199 ( .A(n205), .B(n198), .Q(N100) );
  XOR21 U200 ( .A(sub_1_root_sub_48_I3_carry[7]), .B(N67), .Q(n198) );
  XNR21 U201 ( .A(N89), .B(sub_0_root_sub_48_I3_carry[4]), .Q(N97) );
  XNR21 U202 ( .A(N43), .B(sub_0_root_sub_48_I2_carry_6_), .Q(N51) );
  XNR20 U203 ( .A(lte_47_I2_B_6_), .B(n246), .Q(N43) );
  INV3 U204 ( .A(n207), .Q(sub_1_root_sub_48_I3_carry[5]) );
  NOR21 U205 ( .A(n247), .B(N64), .Q(n207) );
  INV3 U206 ( .A(n210), .Q(sub_1_root_sub_48_I2_carry_7_) );
  NOR20 U207 ( .A(n246), .B(lte_47_I2_B_6_), .Q(n210) );
  NOR21 U208 ( .A(sub_0_root_sub_48_I2_carry_6_), .B(N43), .Q(n209) );
  INV3 U209 ( .A(n203), .Q(sub_0_root_sub_48_I3_carry[5]) );
  NOR21 U210 ( .A(sub_0_root_sub_48_I3_carry[4]), .B(N89), .Q(n203) );
  XNR21 U211 ( .A(arg[1]), .B(arg[0]), .Q(N142) );
  XNR21 U212 ( .A(arg[3]), .B(arg[2]), .Q(N96) );
  XNR21 U213 ( .A(arg[5]), .B(arg[4]), .Q(N50) );
  XNR21 U214 ( .A(arg[6]), .B(arg[7]), .Q(N18) );
  INV3 U215 ( .A(n201), .Q(sub_1_root_sub_48_I4_carry[2]) );
  NOR21 U216 ( .A(arg[0]), .B(arg[1]), .Q(n201) );
  INV3 U217 ( .A(n208), .Q(sub_0_root_sub_48_I2_carry_6_) );
  NOR21 U218 ( .A(arg[4]), .B(arg[5]), .Q(n208) );
  INV3 U219 ( .A(n202), .Q(sub_0_root_sub_48_I3_carry[4]) );
  NOR21 U220 ( .A(arg[2]), .B(arg[3]), .Q(n202) );
  NOR20 U221 ( .A(n211), .B(n212), .Q(sqroot[4]) );
  CLKIN0 U222 ( .A(N170), .Q(n212) );
  MUX21 U223 ( .A(lt_gt_56_A_3_), .B(N169), .S(n213), .Q(sqroot[3]) );
  MUX21 U224 ( .A(lt_gt_56_A_2_), .B(N168), .S(n213), .Q(sqroot[2]) );
  MUX21 U225 ( .A(lt_gt_56_A_1_), .B(N167), .S(n213), .Q(sqroot[1]) );
  CLKIN0 U226 ( .A(n211), .Q(n213) );
  XNR20 U227 ( .A(lt_gt_56_A_0_), .B(n211), .Q(sqroot[0]) );
  OAI210 U228 ( .A(n214), .B(n215), .C(roundup), .Q(n211) );
  NAND20 U229 ( .A(n216), .B(n217), .Q(n215) );
  OAI310 U230 ( .A(N145), .B(N147), .C(N146), .D(lt_gt_56_A_0_), .Q(n217) );
  IMUX20 U231 ( .A(N148), .B(N112), .S(n218), .Q(n216) );
  MAJ31 U232 ( .A(n219), .B(n220), .C(n246), .Q(n214) );
  MAJ31 U233 ( .A(n221), .B(n222), .C(n223), .Q(n220) );
  AOI210 U234 ( .A(lt_gt_56_A_1_), .B(n224), .C(n225), .Q(n222) );
  IMUX20 U235 ( .A(N142), .B(n226), .S(n218), .Q(n225) );
  CLKIN0 U236 ( .A(n227), .Q(n226) );
  AOI210 U237 ( .A(n248), .B(arg[0]), .C(arg[1]), .Q(n227) );
  NAND20 U238 ( .A(arg[0]), .B(n218), .Q(n224) );
  MUX21 U239 ( .A(N143), .B(N110), .S(n218), .Q(n221) );
  MUX21 U240 ( .A(N144), .B(N111), .S(n218), .Q(n219) );
  CLKIN0 U241 ( .A(lt_gt_56_A_0_), .Q(n218) );
  NAND30 U242 ( .A(n228), .B(n229), .C(n230), .Q(lt_gt_56_A_0_) );
  AOI2110 U243 ( .A(n231), .B(n246), .C(N113), .D(n232), .Q(n230) );
  CLKIN0 U244 ( .A(n233), .Q(n232) );
  OAI210 U245 ( .A(n231), .B(n246), .C(N112), .Q(n233) );
  MAJ31 U246 ( .A(N111), .B(n234), .C(n223), .Q(n231) );
  NOR20 U247 ( .A(n235), .B(lte_47_I2_B_7_), .Q(n223) );
  CLKIN0 U248 ( .A(n236), .Q(lte_47_I2_B_7_) );
  CLKIN0 U249 ( .A(n237), .Q(n235) );
  AOI210 U250 ( .A(n238), .B(lt_gt_56_A_1_), .C(n239), .Q(n234) );
  AOI2110 U251 ( .A(N110), .B(n248), .C(arg[1]), .D(arg[0]), .Q(n239) );
  CLKIN0 U252 ( .A(lt_gt_56_A_1_), .Q(n248) );
  CLKIN0 U253 ( .A(n240), .Q(N67) );
  CLKIN0 U254 ( .A(n241), .Q(N66) );
  NAND20 U255 ( .A(N100), .B(lt_gt_56_A_1_), .Q(n228) );
  CLKIN0 U256 ( .A(n229), .Q(N114) );
  NAND20 U257 ( .A(N99), .B(lt_gt_56_A_1_), .Q(n229) );
  MUX21 U258 ( .A(N65), .B(N98), .S(lt_gt_56_A_1_), .Q(N113) );
  MUX21 U259 ( .A(N64), .B(N97), .S(lt_gt_56_A_1_), .Q(N112) );
  MUX21 U260 ( .A(arg[3]), .B(N96), .S(lt_gt_56_A_1_), .Q(N111) );
  CLKIN0 U261 ( .A(n238), .Q(N110) );
  XNR20 U262 ( .A(arg[2]), .B(lt_gt_56_A_1_), .Q(n238) );
  IMAJ30 U263 ( .A(N65), .B(n246), .C(n243), .Q(n242) );
  AOI210 U264 ( .A(n244), .B(lt_gt_56_A_2_), .C(n245), .Q(n243) );
  AOI2110 U265 ( .A(N64), .B(n247), .C(arg[3]), .D(arg[2]), .Q(n245) );
  CLKIN0 U266 ( .A(n244), .Q(N64) );
  XNR20 U267 ( .A(arg[4]), .B(lt_gt_56_A_2_), .Q(n244) );
  MUX21 U268 ( .A(arg[5]), .B(N50), .S(lt_gt_56_A_2_), .Q(N65) );
  NAND20 U269 ( .A(N52), .B(lt_gt_56_A_2_), .Q(n240) );
  IMUX20 U270 ( .A(N51), .B(lte_47_I2_B_6_), .S(n247), .Q(n241) );
  CLKIN0 U271 ( .A(lt_gt_56_A_2_), .Q(n247) );
  NAND20 U272 ( .A(n236), .B(n237), .Q(lt_gt_56_A_2_) );
  OAI220 U273 ( .A(lte_47_I2_B_6_), .B(n246), .C(arg[5]), .D(arg[4]), .Q(n237)
         );
  NAND20 U274 ( .A(lt_gt_56_A_3_), .B(N18), .Q(n236) );
  CLKIN0 U275 ( .A(n246), .Q(lt_gt_56_A_3_) );
  NOR20 U276 ( .A(n246), .B(arg[6]), .Q(lte_47_I2_B_6_) );
endmodule

