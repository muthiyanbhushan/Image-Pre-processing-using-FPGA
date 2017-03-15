////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.36
//  \   \         Application: netgen
//  /   /         Filename: average_synthesis.v
// /___/   /\     Timestamp: Thu May 29 14:21:11 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim average.ngc average_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: average.ngc
// Output file	: I:\Average_filtering\netgen\synthesis\average_synthesis.v
// # of Modules	: 1
// Design Name	: average
// Xilinx        : C:\Xilinx92i
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module average (
  rst_n, valid, out_pixel, Mat0, Mat1, Mat2
);
  input rst_n;
  output valid;
  output [7 : 0] out_pixel;
  input [7 : 0] Mat0;
  input [7 : 0] Mat1;
  input [7 : 0] Mat2;
  wire valid_OBUF_0;
  wire out_pixel_7_OBUF_1;
  wire out_pixel_6_2;
  wire out_pixel_5_3;
  wire out_pixel_4_4;
  wire out_pixel_3_5;
  wire out_pixel_2_6;
  wire out_pixel_1_7;
  wire out_pixel_0_8;
  wire Mat0_7_IBUF_9;
  wire Mat0_6_IBUF_10;
  wire Mat0_5_IBUF_11;
  wire Mat0_4_IBUF_12;
  wire Mat0_3_IBUF_13;
  wire Mat0_2_IBUF_14;
  wire Mat0_1_IBUF_15;
  wire Mat1_7_IBUF_16;
  wire Mat1_6_IBUF_17;
  wire Mat1_5_IBUF_18;
  wire Mat1_4_IBUF_19;
  wire Mat1_3_IBUF_20;
  wire Mat1_2_IBUF_21;
  wire Mat1_1_IBUF_22;
  wire Mat2_7_IBUF_23;
  wire Mat2_6_IBUF_24;
  wire Mat2_5_IBUF_25;
  wire Mat2_4_IBUF_26;
  wire Mat2_3_IBUF_27;
  wire Mat2_2_IBUF_28;
  wire Mat2_1_IBUF_29;
  wire N5;
  wire N6;
  wire N7;
  wire N8;
  wire N9;
  wire N10;
  wire N11;
  wire N12;
  wire N13;
  wire N14;
  wire N15;
  wire N16;
  wire N17;
  wire valid_OBUF1;
  wire N18;
  wire [6 : 1] t1_add0001;
  wire [6 : 1] out_pixel_add0000;
  wire [5 : 0] Madd_t1_add0001_cy;
  wire [5 : 0] Madd_out_pixel_add0000_cy;
  GND XST_GND (
    .G(out_pixel_7_OBUF_1)
  );
  defparam out_pixel_0.INIT = 1'b0;
  LD out_pixel_0 (
    .D(N12),
    .G(valid_OBUF_0),
    .Q(out_pixel_0_8)
  );
  defparam out_pixel_1.INIT = 1'b0;
  LD out_pixel_1 (
    .D(out_pixel_add0000[1]),
    .G(valid_OBUF_0),
    .Q(out_pixel_1_7)
  );
  defparam out_pixel_2.INIT = 1'b0;
  LD out_pixel_2 (
    .D(out_pixel_add0000[2]),
    .G(valid_OBUF_0),
    .Q(out_pixel_2_6)
  );
  defparam out_pixel_3.INIT = 1'b0;
  LD out_pixel_3 (
    .D(out_pixel_add0000[3]),
    .G(valid_OBUF_0),
    .Q(out_pixel_3_5)
  );
  defparam out_pixel_4.INIT = 1'b0;
  LD out_pixel_4 (
    .D(out_pixel_add0000[4]),
    .G(valid_OBUF_0),
    .Q(out_pixel_4_4)
  );
  defparam out_pixel_5.INIT = 1'b0;
  LD out_pixel_5 (
    .D(out_pixel_add0000[5]),
    .G(valid_OBUF_0),
    .Q(out_pixel_5_3)
  );
  defparam out_pixel_6.INIT = 1'b0;
  LD out_pixel_6 (
    .D(out_pixel_add0000[6]),
    .G(valid_OBUF_0),
    .Q(out_pixel_6_2)
  );
  defparam \Madd_t1_add0001_lut<0> .INIT = 4'h6;
  LUT2 \Madd_t1_add0001_lut<0>  (
    .I0(Mat0_1_IBUF_15),
    .I1(Mat1_1_IBUF_22),
    .O(N5)
  );
  MUXCY \Madd_t1_add0001_cy<0>  (
    .CI(out_pixel_7_OBUF_1),
    .DI(Mat0_1_IBUF_15),
    .S(N5),
    .O(Madd_t1_add0001_cy[0])
  );
  defparam \Madd_t1_add0001_lut<1> .INIT = 4'h6;
  LUT2 \Madd_t1_add0001_lut<1>  (
    .I0(Mat0_2_IBUF_14),
    .I1(Mat1_2_IBUF_21),
    .O(N6)
  );
  MUXCY \Madd_t1_add0001_cy<1>  (
    .CI(Madd_t1_add0001_cy[0]),
    .DI(Mat0_2_IBUF_14),
    .S(N6),
    .O(Madd_t1_add0001_cy[1])
  );
  XORCY \Madd_t1_add0001_xor<1>  (
    .CI(Madd_t1_add0001_cy[0]),
    .LI(N6),
    .O(t1_add0001[1])
  );
  defparam \Madd_t1_add0001_lut<2> .INIT = 4'h6;
  LUT2 \Madd_t1_add0001_lut<2>  (
    .I0(Mat0_3_IBUF_13),
    .I1(Mat1_3_IBUF_20),
    .O(N7)
  );
  MUXCY \Madd_t1_add0001_cy<2>  (
    .CI(Madd_t1_add0001_cy[1]),
    .DI(Mat0_3_IBUF_13),
    .S(N7),
    .O(Madd_t1_add0001_cy[2])
  );
  XORCY \Madd_t1_add0001_xor<2>  (
    .CI(Madd_t1_add0001_cy[1]),
    .LI(N7),
    .O(t1_add0001[2])
  );
  defparam \Madd_t1_add0001_lut<3> .INIT = 4'h6;
  LUT2 \Madd_t1_add0001_lut<3>  (
    .I0(Mat0_4_IBUF_12),
    .I1(Mat1_4_IBUF_19),
    .O(N8)
  );
  MUXCY \Madd_t1_add0001_cy<3>  (
    .CI(Madd_t1_add0001_cy[2]),
    .DI(Mat0_4_IBUF_12),
    .S(N8),
    .O(Madd_t1_add0001_cy[3])
  );
  XORCY \Madd_t1_add0001_xor<3>  (
    .CI(Madd_t1_add0001_cy[2]),
    .LI(N8),
    .O(t1_add0001[3])
  );
  defparam \Madd_t1_add0001_lut<4> .INIT = 4'h6;
  LUT2 \Madd_t1_add0001_lut<4>  (
    .I0(Mat0_5_IBUF_11),
    .I1(Mat1_5_IBUF_18),
    .O(N9)
  );
  MUXCY \Madd_t1_add0001_cy<4>  (
    .CI(Madd_t1_add0001_cy[3]),
    .DI(Mat0_5_IBUF_11),
    .S(N9),
    .O(Madd_t1_add0001_cy[4])
  );
  XORCY \Madd_t1_add0001_xor<4>  (
    .CI(Madd_t1_add0001_cy[3]),
    .LI(N9),
    .O(t1_add0001[4])
  );
  defparam \Madd_t1_add0001_lut<5> .INIT = 4'h6;
  LUT2 \Madd_t1_add0001_lut<5>  (
    .I0(Mat0_6_IBUF_10),
    .I1(Mat1_6_IBUF_17),
    .O(N10)
  );
  MUXCY \Madd_t1_add0001_cy<5>  (
    .CI(Madd_t1_add0001_cy[4]),
    .DI(Mat0_6_IBUF_10),
    .S(N10),
    .O(Madd_t1_add0001_cy[5])
  );
  XORCY \Madd_t1_add0001_xor<5>  (
    .CI(Madd_t1_add0001_cy[4]),
    .LI(N10),
    .O(t1_add0001[5])
  );
  defparam \Madd_t1_add0001_lut<6> .INIT = 4'h6;
  LUT2 \Madd_t1_add0001_lut<6>  (
    .I0(Mat0_7_IBUF_9),
    .I1(Mat1_7_IBUF_16),
    .O(N11)
  );
  XORCY \Madd_t1_add0001_xor<6>  (
    .CI(Madd_t1_add0001_cy[5]),
    .LI(N11),
    .O(t1_add0001[6])
  );
  defparam \Madd_out_pixel_add0000_lut<0> .INIT = 4'h6;
  LUT2 \Madd_out_pixel_add0000_lut<0>  (
    .I0(t1_add0001[1]),
    .I1(Mat2_1_IBUF_29),
    .O(N12)
  );
  MUXCY \Madd_out_pixel_add0000_cy<0>  (
    .CI(out_pixel_7_OBUF_1),
    .DI(t1_add0001[1]),
    .S(N12),
    .O(Madd_out_pixel_add0000_cy[0])
  );
  defparam \Madd_out_pixel_add0000_lut<1> .INIT = 4'h6;
  LUT2 \Madd_out_pixel_add0000_lut<1>  (
    .I0(t1_add0001[2]),
    .I1(Mat2_2_IBUF_28),
    .O(N13)
  );
  MUXCY \Madd_out_pixel_add0000_cy<1>  (
    .CI(Madd_out_pixel_add0000_cy[0]),
    .DI(t1_add0001[2]),
    .S(N13),
    .O(Madd_out_pixel_add0000_cy[1])
  );
  XORCY \Madd_out_pixel_add0000_xor<1>  (
    .CI(Madd_out_pixel_add0000_cy[0]),
    .LI(N13),
    .O(out_pixel_add0000[1])
  );
  defparam \Madd_out_pixel_add0000_lut<2> .INIT = 4'h6;
  LUT2 \Madd_out_pixel_add0000_lut<2>  (
    .I0(t1_add0001[3]),
    .I1(Mat2_3_IBUF_27),
    .O(N14)
  );
  MUXCY \Madd_out_pixel_add0000_cy<2>  (
    .CI(Madd_out_pixel_add0000_cy[1]),
    .DI(t1_add0001[3]),
    .S(N14),
    .O(Madd_out_pixel_add0000_cy[2])
  );
  XORCY \Madd_out_pixel_add0000_xor<2>  (
    .CI(Madd_out_pixel_add0000_cy[1]),
    .LI(N14),
    .O(out_pixel_add0000[2])
  );
  defparam \Madd_out_pixel_add0000_lut<3> .INIT = 4'h6;
  LUT2 \Madd_out_pixel_add0000_lut<3>  (
    .I0(t1_add0001[4]),
    .I1(Mat2_4_IBUF_26),
    .O(N15)
  );
  MUXCY \Madd_out_pixel_add0000_cy<3>  (
    .CI(Madd_out_pixel_add0000_cy[2]),
    .DI(t1_add0001[4]),
    .S(N15),
    .O(Madd_out_pixel_add0000_cy[3])
  );
  XORCY \Madd_out_pixel_add0000_xor<3>  (
    .CI(Madd_out_pixel_add0000_cy[2]),
    .LI(N15),
    .O(out_pixel_add0000[3])
  );
  defparam \Madd_out_pixel_add0000_lut<4> .INIT = 4'h6;
  LUT2 \Madd_out_pixel_add0000_lut<4>  (
    .I0(t1_add0001[5]),
    .I1(Mat2_5_IBUF_25),
    .O(N16)
  );
  MUXCY \Madd_out_pixel_add0000_cy<4>  (
    .CI(Madd_out_pixel_add0000_cy[3]),
    .DI(t1_add0001[5]),
    .S(N16),
    .O(Madd_out_pixel_add0000_cy[4])
  );
  XORCY \Madd_out_pixel_add0000_xor<4>  (
    .CI(Madd_out_pixel_add0000_cy[3]),
    .LI(N16),
    .O(out_pixel_add0000[4])
  );
  defparam \Madd_out_pixel_add0000_lut<5> .INIT = 4'h6;
  LUT2 \Madd_out_pixel_add0000_lut<5>  (
    .I0(t1_add0001[6]),
    .I1(Mat2_6_IBUF_24),
    .O(N17)
  );
  MUXCY \Madd_out_pixel_add0000_cy<5>  (
    .CI(Madd_out_pixel_add0000_cy[4]),
    .DI(t1_add0001[6]),
    .S(N17),
    .O(Madd_out_pixel_add0000_cy[5])
  );
  XORCY \Madd_out_pixel_add0000_xor<5>  (
    .CI(Madd_out_pixel_add0000_cy[4]),
    .LI(N17),
    .O(out_pixel_add0000[5])
  );
  XORCY \Madd_out_pixel_add0000_xor<6>  (
    .CI(Madd_out_pixel_add0000_cy[5]),
    .LI(Mat2_7_IBUF_23),
    .O(out_pixel_add0000[6])
  );
  IBUF rst_n_IBUF (
    .I(rst_n),
    .O(valid_OBUF1)
  );
  IBUF Mat0_7_IBUF (
    .I(Mat0[7]),
    .O(Mat0_7_IBUF_9)
  );
  IBUF Mat0_6_IBUF (
    .I(Mat0[6]),
    .O(Mat0_6_IBUF_10)
  );
  IBUF Mat0_5_IBUF (
    .I(Mat0[5]),
    .O(Mat0_5_IBUF_11)
  );
  IBUF Mat0_4_IBUF (
    .I(Mat0[4]),
    .O(Mat0_4_IBUF_12)
  );
  IBUF Mat0_3_IBUF (
    .I(Mat0[3]),
    .O(Mat0_3_IBUF_13)
  );
  IBUF Mat0_2_IBUF (
    .I(Mat0[2]),
    .O(Mat0_2_IBUF_14)
  );
  IBUF Mat0_1_IBUF (
    .I(Mat0[1]),
    .O(Mat0_1_IBUF_15)
  );
  IBUF Mat1_7_IBUF (
    .I(Mat1[7]),
    .O(Mat1_7_IBUF_16)
  );
  IBUF Mat1_6_IBUF (
    .I(Mat1[6]),
    .O(Mat1_6_IBUF_17)
  );
  IBUF Mat1_5_IBUF (
    .I(Mat1[5]),
    .O(Mat1_5_IBUF_18)
  );
  IBUF Mat1_4_IBUF (
    .I(Mat1[4]),
    .O(Mat1_4_IBUF_19)
  );
  IBUF Mat1_3_IBUF (
    .I(Mat1[3]),
    .O(Mat1_3_IBUF_20)
  );
  IBUF Mat1_2_IBUF (
    .I(Mat1[2]),
    .O(Mat1_2_IBUF_21)
  );
  IBUF Mat1_1_IBUF (
    .I(Mat1[1]),
    .O(Mat1_1_IBUF_22)
  );
  IBUF Mat2_7_IBUF (
    .I(Mat2[7]),
    .O(Mat2_7_IBUF_23)
  );
  IBUF Mat2_6_IBUF (
    .I(Mat2[6]),
    .O(Mat2_6_IBUF_24)
  );
  IBUF Mat2_5_IBUF (
    .I(Mat2[5]),
    .O(Mat2_5_IBUF_25)
  );
  IBUF Mat2_4_IBUF (
    .I(Mat2[4]),
    .O(Mat2_4_IBUF_26)
  );
  IBUF Mat2_3_IBUF (
    .I(Mat2[3]),
    .O(Mat2_3_IBUF_27)
  );
  IBUF Mat2_2_IBUF (
    .I(Mat2[2]),
    .O(Mat2_2_IBUF_28)
  );
  IBUF Mat2_1_IBUF (
    .I(Mat2[1]),
    .O(Mat2_1_IBUF_29)
  );
  OBUF valid_OBUF (
    .I(valid_OBUF1),
    .O(valid)
  );
  OBUF out_pixel_7_OBUF (
    .I(out_pixel_7_OBUF_1),
    .O(out_pixel[7])
  );
  OBUF out_pixel_6_OBUF (
    .I(out_pixel_6_2),
    .O(out_pixel[6])
  );
  OBUF out_pixel_5_OBUF (
    .I(out_pixel_5_3),
    .O(out_pixel[5])
  );
  OBUF out_pixel_4_OBUF (
    .I(out_pixel_4_4),
    .O(out_pixel[4])
  );
  OBUF out_pixel_3_OBUF (
    .I(out_pixel_3_5),
    .O(out_pixel[3])
  );
  OBUF out_pixel_2_OBUF (
    .I(out_pixel_2_6),
    .O(out_pixel[2])
  );
  OBUF out_pixel_1_OBUF (
    .I(out_pixel_1_7),
    .O(out_pixel[1])
  );
  OBUF out_pixel_0_OBUF (
    .I(out_pixel_0_8),
    .O(out_pixel[0])
  );
  BUFG valid_OBUF_BUFG (
    .I(valid_OBUF1),
    .O(valid_OBUF_0)
  );
  VCC XST_VCC (
    .P(N18)
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

