// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Dec  7 00:42:05 2025
// Host        : LAPTOP-PII719PV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/HE_THONG_SO_HDL/THUC_HANH/LAB_2_VIVADO/BAI_1/MEDIAN_FILTER/MEDIAN_FILTER.sim/sim_1/synth/func/xsim/BUFFER_LINE_TESTBENCH_func_synth.v
// Design      : BUFFER_LINE
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_WIDTH = "9" *) (* HEIGHT = "554" *) (* WIDTH = "430" *) 
(* NotValidForBitStream *)
module BUFFER_LINE
   (clk,
    rst_n,
    i_valid,
    i_pixel,
    o_row_1,
    o_row_2,
    o_row_3);
  input clk;
  input rst_n;
  input i_valid;
  input [7:0]i_pixel;
  output [7:0]o_row_1;
  output [7:0]o_row_2;
  output [7:0]o_row_3;

  wire RAM1_n_0;
  wire RAM1_n_1;
  wire RAM1_n_2;
  wire RAM1_n_3;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [9:0]col_counter;
  wire \col_counter[8]_i_2_n_0 ;
  wire \col_counter[9]_i_2_n_0 ;
  wire \col_counter[9]_i_3_n_0 ;
  wire \col_counter_reg_n_0_[0] ;
  wire \col_counter_reg_n_0_[1] ;
  wire \col_counter_reg_n_0_[2] ;
  wire \col_counter_reg_n_0_[3] ;
  wire \col_counter_reg_n_0_[4] ;
  wire \col_counter_reg_n_0_[5] ;
  wire \col_counter_reg_n_0_[6] ;
  wire \col_counter_reg_n_0_[7] ;
  wire \col_counter_reg_n_0_[8] ;
  wire \col_counter_reg_n_0_[9] ;
  wire [5:1]data0;
  wire [7:0]i_pixel;
  wire [7:0]i_pixel_IBUF;
  wire i_valid;
  wire i_valid_IBUF;
  wire [7:0]o_row_1;
  wire [7:0]o_row_1_OBUF;
  wire [7:0]o_row_2;
  wire [7:0]o_row_2_OBUF;
  wire [7:0]o_row_3;
  wire [7:0]o_row_3_OBUF;
  wire rst_n;
  wire rst_n_IBUF;

  RAM RAM1
       (.D(i_pixel_IBUF),
        .Q({\col_counter_reg_n_0_[8] ,\col_counter_reg_n_0_[7] ,\col_counter_reg_n_0_[6] ,\col_counter_reg_n_0_[5] ,\col_counter_reg_n_0_[4] ,\col_counter_reg_n_0_[3] ,\col_counter_reg_n_0_[2] ,\col_counter_reg_n_0_[1] ,\col_counter_reg_n_0_[0] }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\col_counter_reg[4] (RAM1_n_0),
        .\col_counter_reg[6] (RAM1_n_2),
        .\col_counter_reg[7] (RAM1_n_1),
        .\col_counter_reg[8] (RAM1_n_3),
        .dout(o_row_2_OBUF),
        .i_valid_IBUF(i_valid_IBUF));
  RAM_0 RAM2
       (.CLK(clk_IBUF_BUFG),
        .E(i_valid_IBUF),
        .Q({\col_counter_reg_n_0_[8] ,\col_counter_reg_n_0_[7] ,\col_counter_reg_n_0_[6] ,\col_counter_reg_n_0_[5] ,\col_counter_reg_n_0_[4] ,\col_counter_reg_n_0_[3] ,\col_counter_reg_n_0_[2] ,\col_counter_reg_n_0_[1] ,\col_counter_reg_n_0_[0] }),
        .dout(o_row_1_OBUF),
        .dout0_in(o_row_2_OBUF),
        .\dout[7]_i_2__0_0 (RAM1_n_2),
        .\dout[7]_i_2__0_1 (RAM1_n_0),
        .\dout_reg[6]_0 (RAM1_n_1),
        .\dout_reg[7]_0 (RAM1_n_3));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \col_counter[0]_i_1 
       (.I0(\col_counter_reg_n_0_[0] ),
        .O(col_counter[0]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00000000)) 
    \col_counter[1]_i_1 
       (.I0(\col_counter_reg_n_0_[9] ),
        .I1(\col_counter_reg_n_0_[8] ),
        .I2(\col_counter_reg_n_0_[6] ),
        .I3(\col_counter[8]_i_2_n_0 ),
        .I4(\col_counter_reg_n_0_[7] ),
        .I5(data0[1]),
        .O(col_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \col_counter[1]_i_2 
       (.I0(\col_counter_reg_n_0_[0] ),
        .I1(\col_counter_reg_n_0_[1] ),
        .O(data0[1]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00000000)) 
    \col_counter[2]_i_1 
       (.I0(\col_counter_reg_n_0_[9] ),
        .I1(\col_counter_reg_n_0_[8] ),
        .I2(\col_counter_reg_n_0_[6] ),
        .I3(\col_counter[8]_i_2_n_0 ),
        .I4(\col_counter_reg_n_0_[7] ),
        .I5(data0[2]),
        .O(col_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \col_counter[2]_i_2 
       (.I0(\col_counter_reg_n_0_[0] ),
        .I1(\col_counter_reg_n_0_[1] ),
        .I2(\col_counter_reg_n_0_[2] ),
        .O(data0[2]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00000000)) 
    \col_counter[3]_i_1 
       (.I0(\col_counter_reg_n_0_[9] ),
        .I1(\col_counter_reg_n_0_[8] ),
        .I2(\col_counter_reg_n_0_[6] ),
        .I3(\col_counter[8]_i_2_n_0 ),
        .I4(\col_counter_reg_n_0_[7] ),
        .I5(data0[3]),
        .O(col_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \col_counter[3]_i_2 
       (.I0(\col_counter_reg_n_0_[2] ),
        .I1(\col_counter_reg_n_0_[1] ),
        .I2(\col_counter_reg_n_0_[0] ),
        .I3(\col_counter_reg_n_0_[3] ),
        .O(data0[3]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00000000)) 
    \col_counter[4]_i_1 
       (.I0(\col_counter_reg_n_0_[9] ),
        .I1(\col_counter_reg_n_0_[8] ),
        .I2(\col_counter_reg_n_0_[6] ),
        .I3(\col_counter[8]_i_2_n_0 ),
        .I4(\col_counter_reg_n_0_[7] ),
        .I5(data0[4]),
        .O(col_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \col_counter[4]_i_2 
       (.I0(\col_counter_reg_n_0_[3] ),
        .I1(\col_counter_reg_n_0_[0] ),
        .I2(\col_counter_reg_n_0_[1] ),
        .I3(\col_counter_reg_n_0_[2] ),
        .I4(\col_counter_reg_n_0_[4] ),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'hFFFBFFFF00000000)) 
    \col_counter[5]_i_1 
       (.I0(\col_counter_reg_n_0_[9] ),
        .I1(\col_counter_reg_n_0_[8] ),
        .I2(\col_counter_reg_n_0_[6] ),
        .I3(\col_counter[8]_i_2_n_0 ),
        .I4(\col_counter_reg_n_0_[7] ),
        .I5(data0[5]),
        .O(col_counter[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \col_counter[5]_i_2 
       (.I0(\col_counter_reg_n_0_[4] ),
        .I1(\col_counter_reg_n_0_[2] ),
        .I2(\col_counter_reg_n_0_[1] ),
        .I3(\col_counter_reg_n_0_[0] ),
        .I4(\col_counter_reg_n_0_[3] ),
        .I5(\col_counter_reg_n_0_[5] ),
        .O(data0[5]));
  LUT6 #(
    .INIT(64'h0000FBFFFFFF0000)) 
    \col_counter[6]_i_1 
       (.I0(\col_counter_reg_n_0_[9] ),
        .I1(\col_counter_reg_n_0_[8] ),
        .I2(\col_counter[8]_i_2_n_0 ),
        .I3(\col_counter_reg_n_0_[7] ),
        .I4(\col_counter_reg_n_0_[6] ),
        .I5(\col_counter[9]_i_3_n_0 ),
        .O(col_counter[6]));
  LUT6 #(
    .INIT(64'h00FFFF00FB00FB00)) 
    \col_counter[7]_i_1 
       (.I0(\col_counter_reg_n_0_[9] ),
        .I1(\col_counter_reg_n_0_[8] ),
        .I2(\col_counter[8]_i_2_n_0 ),
        .I3(\col_counter_reg_n_0_[7] ),
        .I4(\col_counter[9]_i_3_n_0 ),
        .I5(\col_counter_reg_n_0_[6] ),
        .O(col_counter[7]));
  LUT6 #(
    .INIT(64'h0FE0F0E0F0F0F0F0)) 
    \col_counter[8]_i_1 
       (.I0(\col_counter_reg_n_0_[9] ),
        .I1(\col_counter[8]_i_2_n_0 ),
        .I2(\col_counter_reg_n_0_[8] ),
        .I3(\col_counter_reg_n_0_[6] ),
        .I4(\col_counter[9]_i_3_n_0 ),
        .I5(\col_counter_reg_n_0_[7] ),
        .O(col_counter[8]));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \col_counter[8]_i_2 
       (.I0(\col_counter_reg_n_0_[4] ),
        .I1(\col_counter_reg_n_0_[2] ),
        .I2(\col_counter_reg_n_0_[1] ),
        .I3(\col_counter_reg_n_0_[0] ),
        .I4(\col_counter_reg_n_0_[3] ),
        .I5(\col_counter_reg_n_0_[5] ),
        .O(\col_counter[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \col_counter[9]_i_1 
       (.I0(\col_counter_reg_n_0_[9] ),
        .I1(\col_counter_reg_n_0_[7] ),
        .I2(\col_counter[9]_i_3_n_0 ),
        .I3(\col_counter_reg_n_0_[6] ),
        .I4(\col_counter_reg_n_0_[8] ),
        .O(col_counter[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \col_counter[9]_i_2 
       (.I0(rst_n_IBUF),
        .O(\col_counter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \col_counter[9]_i_3 
       (.I0(\col_counter_reg_n_0_[4] ),
        .I1(\col_counter_reg_n_0_[2] ),
        .I2(\col_counter_reg_n_0_[1] ),
        .I3(\col_counter_reg_n_0_[0] ),
        .I4(\col_counter_reg_n_0_[3] ),
        .I5(\col_counter_reg_n_0_[5] ),
        .O(\col_counter[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[0]),
        .Q(\col_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[1]),
        .Q(\col_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[2]),
        .Q(\col_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[3]),
        .Q(\col_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[4]),
        .Q(\col_counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[5]),
        .Q(\col_counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[6]),
        .Q(\col_counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[7]),
        .Q(\col_counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[8]),
        .Q(\col_counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(col_counter[9]),
        .Q(\col_counter_reg_n_0_[9] ));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_pixel_IBUF[0]_inst 
       (.I(i_pixel[0]),
        .O(i_pixel_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_pixel_IBUF[1]_inst 
       (.I(i_pixel[1]),
        .O(i_pixel_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_pixel_IBUF[2]_inst 
       (.I(i_pixel[2]),
        .O(i_pixel_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_pixel_IBUF[3]_inst 
       (.I(i_pixel[3]),
        .O(i_pixel_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_pixel_IBUF[4]_inst 
       (.I(i_pixel[4]),
        .O(i_pixel_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_pixel_IBUF[5]_inst 
       (.I(i_pixel[5]),
        .O(i_pixel_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_pixel_IBUF[6]_inst 
       (.I(i_pixel[6]),
        .O(i_pixel_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \i_pixel_IBUF[7]_inst 
       (.I(i_pixel[7]),
        .O(i_pixel_IBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    i_valid_IBUF_inst
       (.I(i_valid),
        .O(i_valid_IBUF));
  OBUF \o_row_1_OBUF[0]_inst 
       (.I(o_row_1_OBUF[0]),
        .O(o_row_1[0]));
  OBUF \o_row_1_OBUF[1]_inst 
       (.I(o_row_1_OBUF[1]),
        .O(o_row_1[1]));
  OBUF \o_row_1_OBUF[2]_inst 
       (.I(o_row_1_OBUF[2]),
        .O(o_row_1[2]));
  OBUF \o_row_1_OBUF[3]_inst 
       (.I(o_row_1_OBUF[3]),
        .O(o_row_1[3]));
  OBUF \o_row_1_OBUF[4]_inst 
       (.I(o_row_1_OBUF[4]),
        .O(o_row_1[4]));
  OBUF \o_row_1_OBUF[5]_inst 
       (.I(o_row_1_OBUF[5]),
        .O(o_row_1[5]));
  OBUF \o_row_1_OBUF[6]_inst 
       (.I(o_row_1_OBUF[6]),
        .O(o_row_1[6]));
  OBUF \o_row_1_OBUF[7]_inst 
       (.I(o_row_1_OBUF[7]),
        .O(o_row_1[7]));
  OBUF \o_row_2_OBUF[0]_inst 
       (.I(o_row_2_OBUF[0]),
        .O(o_row_2[0]));
  OBUF \o_row_2_OBUF[1]_inst 
       (.I(o_row_2_OBUF[1]),
        .O(o_row_2[1]));
  OBUF \o_row_2_OBUF[2]_inst 
       (.I(o_row_2_OBUF[2]),
        .O(o_row_2[2]));
  OBUF \o_row_2_OBUF[3]_inst 
       (.I(o_row_2_OBUF[3]),
        .O(o_row_2[3]));
  OBUF \o_row_2_OBUF[4]_inst 
       (.I(o_row_2_OBUF[4]),
        .O(o_row_2[4]));
  OBUF \o_row_2_OBUF[5]_inst 
       (.I(o_row_2_OBUF[5]),
        .O(o_row_2[5]));
  OBUF \o_row_2_OBUF[6]_inst 
       (.I(o_row_2_OBUF[6]),
        .O(o_row_2[6]));
  OBUF \o_row_2_OBUF[7]_inst 
       (.I(o_row_2_OBUF[7]),
        .O(o_row_2[7]));
  OBUF \o_row_3_OBUF[0]_inst 
       (.I(o_row_3_OBUF[0]),
        .O(o_row_3[0]));
  OBUF \o_row_3_OBUF[1]_inst 
       (.I(o_row_3_OBUF[1]),
        .O(o_row_3[1]));
  OBUF \o_row_3_OBUF[2]_inst 
       (.I(o_row_3_OBUF[2]),
        .O(o_row_3[2]));
  OBUF \o_row_3_OBUF[3]_inst 
       (.I(o_row_3_OBUF[3]),
        .O(o_row_3[3]));
  OBUF \o_row_3_OBUF[4]_inst 
       (.I(o_row_3_OBUF[4]),
        .O(o_row_3[4]));
  OBUF \o_row_3_OBUF[5]_inst 
       (.I(o_row_3_OBUF[5]),
        .O(o_row_3[5]));
  OBUF \o_row_3_OBUF[6]_inst 
       (.I(o_row_3_OBUF[6]),
        .O(o_row_3[6]));
  OBUF \o_row_3_OBUF[7]_inst 
       (.I(o_row_3_OBUF[7]),
        .O(o_row_3[7]));
  FDCE #(
    .INIT(1'b0)) 
    \row_3_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(i_pixel_IBUF[0]),
        .Q(o_row_3_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \row_3_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(i_pixel_IBUF[1]),
        .Q(o_row_3_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \row_3_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(i_pixel_IBUF[2]),
        .Q(o_row_3_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \row_3_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(i_pixel_IBUF[3]),
        .Q(o_row_3_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \row_3_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(i_pixel_IBUF[4]),
        .Q(o_row_3_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \row_3_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(i_pixel_IBUF[5]),
        .Q(o_row_3_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \row_3_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(i_pixel_IBUF[6]),
        .Q(o_row_3_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \row_3_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .CLR(\col_counter[9]_i_2_n_0 ),
        .D(i_pixel_IBUF[7]),
        .Q(o_row_3_OBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule

module RAM
   (\col_counter_reg[4] ,
    \col_counter_reg[7] ,
    \col_counter_reg[6] ,
    \col_counter_reg[8] ,
    dout,
    Q,
    i_valid_IBUF,
    clk_IBUF_BUFG,
    D);
  output \col_counter_reg[4] ;
  output \col_counter_reg[7] ;
  output \col_counter_reg[6] ;
  output \col_counter_reg[8] ;
  output [7:0]dout;
  input [8:0]Q;
  input i_valid_IBUF;
  input clk_IBUF_BUFG;
  input [7:0]D;

  wire [7:0]D;
  wire MEMORY_reg_0_127_0_0__0_n_0;
  wire MEMORY_reg_0_127_0_0__1_n_0;
  wire MEMORY_reg_0_127_0_0__2_n_0;
  wire MEMORY_reg_0_127_0_0__3_n_0;
  wire MEMORY_reg_0_127_0_0__4_n_0;
  wire MEMORY_reg_0_127_0_0__5_n_0;
  wire MEMORY_reg_0_127_0_0__6_n_0;
  wire MEMORY_reg_0_127_0_0_n_0;
  wire MEMORY_reg_0_15_0_0__0_n_0;
  wire MEMORY_reg_0_15_0_0__1_n_0;
  wire MEMORY_reg_0_15_0_0__2_n_0;
  wire MEMORY_reg_0_15_0_0__3_n_0;
  wire MEMORY_reg_0_15_0_0__4_n_0;
  wire MEMORY_reg_0_15_0_0__5_n_0;
  wire MEMORY_reg_0_15_0_0__6_n_0;
  wire MEMORY_reg_0_15_0_0_n_0;
  wire MEMORY_reg_0_255_0_0__0_n_0;
  wire MEMORY_reg_0_255_0_0__1_n_0;
  wire MEMORY_reg_0_255_0_0__2_n_0;
  wire MEMORY_reg_0_255_0_0__3_n_0;
  wire MEMORY_reg_0_255_0_0__4_n_0;
  wire MEMORY_reg_0_255_0_0__5_n_0;
  wire MEMORY_reg_0_255_0_0__6_n_0;
  wire MEMORY_reg_0_255_0_0_n_0;
  wire MEMORY_reg_0_31_0_0__0_n_0;
  wire MEMORY_reg_0_31_0_0__1_n_0;
  wire MEMORY_reg_0_31_0_0__2_n_0;
  wire MEMORY_reg_0_31_0_0__3_n_0;
  wire MEMORY_reg_0_31_0_0__4_n_0;
  wire MEMORY_reg_0_31_0_0__5_n_0;
  wire MEMORY_reg_0_31_0_0__6_n_0;
  wire MEMORY_reg_0_31_0_0_n_0;
  wire [8:0]Q;
  wire clk_IBUF_BUFG;
  wire \col_counter_reg[4] ;
  wire \col_counter_reg[6] ;
  wire \col_counter_reg[7] ;
  wire \col_counter_reg[8] ;
  wire [7:0]dout;
  wire [7:0]dout0;
  wire \dout[0]_i_2_n_0 ;
  wire \dout[1]_i_2_n_0 ;
  wire \dout[2]_i_2_n_0 ;
  wire \dout[3]_i_2_n_0 ;
  wire \dout[4]_i_2_n_0 ;
  wire \dout[5]_i_2_n_0 ;
  wire \dout[6]_i_2_n_0 ;
  wire \dout[7]_i_2_n_0 ;
  wire i_valid_IBUF;

  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(D[0]),
        .O(MEMORY_reg_0_127_0_0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[7] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(D[1]),
        .O(MEMORY_reg_0_127_0_0__0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[7] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(D[2]),
        .O(MEMORY_reg_0_127_0_0__1_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[7] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(D[3]),
        .O(MEMORY_reg_0_127_0_0__2_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[7] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(D[4]),
        .O(MEMORY_reg_0_127_0_0__3_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[7] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(D[5]),
        .O(MEMORY_reg_0_127_0_0__4_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[7] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(D[6]),
        .O(MEMORY_reg_0_127_0_0__5_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[7] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(D[7]),
        .O(MEMORY_reg_0_127_0_0__6_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[7] ));
  LUT3 #(
    .INIT(8'h40)) 
    MEMORY_reg_0_127_0_0_i_1
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(i_valid_IBUF),
        .O(\col_counter_reg[7] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(D[0]),
        .O(MEMORY_reg_0_15_0_0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[4] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(D[1]),
        .O(MEMORY_reg_0_15_0_0__0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[4] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(D[2]),
        .O(MEMORY_reg_0_15_0_0__1_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[4] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(D[3]),
        .O(MEMORY_reg_0_15_0_0__2_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[4] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(D[4]),
        .O(MEMORY_reg_0_15_0_0__3_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[4] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(D[5]),
        .O(MEMORY_reg_0_15_0_0__4_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[4] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(D[6]),
        .O(MEMORY_reg_0_15_0_0__5_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[4] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(D[7]),
        .O(MEMORY_reg_0_15_0_0__6_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[4] ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    MEMORY_reg_0_15_0_0_i_1
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(i_valid_IBUF),
        .I5(Q[8]),
        .O(\col_counter_reg[4] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0
       (.A(Q[7:0]),
        .D(D[0]),
        .O(MEMORY_reg_0_255_0_0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[8] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__0
       (.A(Q[7:0]),
        .D(D[1]),
        .O(MEMORY_reg_0_255_0_0__0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[8] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__1
       (.A(Q[7:0]),
        .D(D[2]),
        .O(MEMORY_reg_0_255_0_0__1_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[8] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__2
       (.A(Q[7:0]),
        .D(D[3]),
        .O(MEMORY_reg_0_255_0_0__2_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[8] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__3
       (.A(Q[7:0]),
        .D(D[4]),
        .O(MEMORY_reg_0_255_0_0__3_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[8] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__4
       (.A(Q[7:0]),
        .D(D[5]),
        .O(MEMORY_reg_0_255_0_0__4_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[8] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__5
       (.A(Q[7:0]),
        .D(D[6]),
        .O(MEMORY_reg_0_255_0_0__5_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[8] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__6
       (.A(Q[7:0]),
        .D(D[7]),
        .O(MEMORY_reg_0_255_0_0__6_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[8] ));
  LUT2 #(
    .INIT(4'h2)) 
    MEMORY_reg_0_255_0_0_i_1
       (.I0(i_valid_IBUF),
        .I1(Q[8]),
        .O(\col_counter_reg[8] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(D[0]),
        .O(MEMORY_reg_0_31_0_0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[6] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(D[1]),
        .O(MEMORY_reg_0_31_0_0__0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[6] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(D[2]),
        .O(MEMORY_reg_0_31_0_0__1_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[6] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(D[3]),
        .O(MEMORY_reg_0_31_0_0__2_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[6] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(D[4]),
        .O(MEMORY_reg_0_31_0_0__3_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[6] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(D[5]),
        .O(MEMORY_reg_0_31_0_0__4_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[6] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(D[6]),
        .O(MEMORY_reg_0_31_0_0__5_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[6] ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM1/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(D[7]),
        .O(MEMORY_reg_0_31_0_0__6_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(\col_counter_reg[6] ));
  LUT5 #(
    .INIT(32'h00400000)) 
    MEMORY_reg_0_31_0_0_i_1
       (.I0(Q[6]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(i_valid_IBUF),
        .O(\col_counter_reg[6] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[0]_i_1 
       (.I0(\dout[0]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0_n_0),
        .O(dout0[0]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[0]_i_2 
       (.I0(MEMORY_reg_0_31_0_0_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0_n_0),
        .I4(Q[6]),
        .O(\dout[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[1]_i_1 
       (.I0(\dout[1]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__0_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__0_n_0),
        .O(dout0[1]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[1]_i_2 
       (.I0(MEMORY_reg_0_31_0_0__0_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__0_n_0),
        .I4(Q[6]),
        .O(\dout[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[2]_i_1 
       (.I0(\dout[2]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__1_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__1_n_0),
        .O(dout0[2]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[2]_i_2 
       (.I0(MEMORY_reg_0_31_0_0__1_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__1_n_0),
        .I4(Q[6]),
        .O(\dout[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[3]_i_1 
       (.I0(\dout[3]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__2_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__2_n_0),
        .O(dout0[3]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[3]_i_2 
       (.I0(MEMORY_reg_0_31_0_0__2_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__2_n_0),
        .I4(Q[6]),
        .O(\dout[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[4]_i_1 
       (.I0(\dout[4]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__3_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__3_n_0),
        .O(dout0[4]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[4]_i_2 
       (.I0(MEMORY_reg_0_31_0_0__3_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__3_n_0),
        .I4(Q[6]),
        .O(\dout[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[5]_i_1 
       (.I0(\dout[5]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__4_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__4_n_0),
        .O(dout0[5]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[5]_i_2 
       (.I0(MEMORY_reg_0_31_0_0__4_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__4_n_0),
        .I4(Q[6]),
        .O(\dout[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[6]_i_1 
       (.I0(\dout[6]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__5_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__5_n_0),
        .O(dout0[6]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[6]_i_2 
       (.I0(MEMORY_reg_0_31_0_0__5_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__5_n_0),
        .I4(Q[6]),
        .O(\dout[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[7]_i_1 
       (.I0(\dout[7]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__6_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__6_n_0),
        .O(dout0[7]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[7]_i_2 
       (.I0(MEMORY_reg_0_31_0_0__6_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__6_n_0),
        .I4(Q[6]),
        .O(\dout[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(dout0[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(dout0[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(dout0[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(dout0[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(dout0[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(dout0[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(dout0[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(i_valid_IBUF),
        .D(dout0[7]),
        .Q(dout[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "RAM" *) 
module RAM_0
   (dout,
    Q,
    E,
    CLK,
    dout0_in,
    \dout_reg[7]_0 ,
    \dout_reg[6]_0 ,
    \dout[7]_i_2__0_0 ,
    \dout[7]_i_2__0_1 );
  output [7:0]dout;
  input [8:0]Q;
  input [0:0]E;
  input CLK;
  input [7:0]dout0_in;
  input \dout_reg[7]_0 ;
  input \dout_reg[6]_0 ;
  input \dout[7]_i_2__0_0 ;
  input \dout[7]_i_2__0_1 ;

  wire CLK;
  wire [0:0]E;
  wire MEMORY_reg_0_127_0_0__0_n_0;
  wire MEMORY_reg_0_127_0_0__1_n_0;
  wire MEMORY_reg_0_127_0_0__2_n_0;
  wire MEMORY_reg_0_127_0_0__3_n_0;
  wire MEMORY_reg_0_127_0_0__4_n_0;
  wire MEMORY_reg_0_127_0_0__5_n_0;
  wire MEMORY_reg_0_127_0_0__6_n_0;
  wire MEMORY_reg_0_127_0_0_n_0;
  wire MEMORY_reg_0_15_0_0__0_n_0;
  wire MEMORY_reg_0_15_0_0__1_n_0;
  wire MEMORY_reg_0_15_0_0__2_n_0;
  wire MEMORY_reg_0_15_0_0__3_n_0;
  wire MEMORY_reg_0_15_0_0__4_n_0;
  wire MEMORY_reg_0_15_0_0__5_n_0;
  wire MEMORY_reg_0_15_0_0__6_n_0;
  wire MEMORY_reg_0_15_0_0_n_0;
  wire MEMORY_reg_0_255_0_0__0_n_0;
  wire MEMORY_reg_0_255_0_0__1_n_0;
  wire MEMORY_reg_0_255_0_0__2_n_0;
  wire MEMORY_reg_0_255_0_0__3_n_0;
  wire MEMORY_reg_0_255_0_0__4_n_0;
  wire MEMORY_reg_0_255_0_0__5_n_0;
  wire MEMORY_reg_0_255_0_0__6_n_0;
  wire MEMORY_reg_0_255_0_0_n_0;
  wire MEMORY_reg_0_31_0_0__0_n_0;
  wire MEMORY_reg_0_31_0_0__1_n_0;
  wire MEMORY_reg_0_31_0_0__2_n_0;
  wire MEMORY_reg_0_31_0_0__3_n_0;
  wire MEMORY_reg_0_31_0_0__4_n_0;
  wire MEMORY_reg_0_31_0_0__5_n_0;
  wire MEMORY_reg_0_31_0_0__6_n_0;
  wire MEMORY_reg_0_31_0_0_n_0;
  wire [8:0]Q;
  wire [7:0]dout;
  wire [7:0]dout0__0;
  wire [7:0]dout0_in;
  wire \dout[0]_i_2__0_n_0 ;
  wire \dout[1]_i_2__0_n_0 ;
  wire \dout[2]_i_2__0_n_0 ;
  wire \dout[3]_i_2__0_n_0 ;
  wire \dout[4]_i_2__0_n_0 ;
  wire \dout[5]_i_2__0_n_0 ;
  wire \dout[6]_i_2__0_n_0 ;
  wire \dout[7]_i_2__0_0 ;
  wire \dout[7]_i_2__0_1 ;
  wire \dout[7]_i_2__0_n_0 ;
  wire \dout_reg[6]_0 ;
  wire \dout_reg[7]_0 ;

  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(dout0_in[0]),
        .O(MEMORY_reg_0_127_0_0_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[6]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(dout0_in[1]),
        .O(MEMORY_reg_0_127_0_0__0_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[6]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(dout0_in[2]),
        .O(MEMORY_reg_0_127_0_0__1_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[6]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(dout0_in[3]),
        .O(MEMORY_reg_0_127_0_0__2_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[6]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(dout0_in[4]),
        .O(MEMORY_reg_0_127_0_0__3_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[6]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(dout0_in[5]),
        .O(MEMORY_reg_0_127_0_0__4_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[6]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(dout0_in[6]),
        .O(MEMORY_reg_0_127_0_0__5_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[6]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    MEMORY_reg_0_127_0_0__6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(dout0_in[7]),
        .O(MEMORY_reg_0_127_0_0__6_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[6]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(dout0_in[0]),
        .O(MEMORY_reg_0_15_0_0_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_1 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(dout0_in[1]),
        .O(MEMORY_reg_0_15_0_0__0_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_1 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(dout0_in[2]),
        .O(MEMORY_reg_0_15_0_0__1_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_1 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(dout0_in[3]),
        .O(MEMORY_reg_0_15_0_0__2_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_1 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(dout0_in[4]),
        .O(MEMORY_reg_0_15_0_0__3_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_1 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(dout0_in[5]),
        .O(MEMORY_reg_0_15_0_0__4_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_1 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(dout0_in[6]),
        .O(MEMORY_reg_0_15_0_0__5_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_1 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "416" *) 
  (* ram_addr_end = "429" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_15_0_0__6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(dout0_in[7]),
        .O(MEMORY_reg_0_15_0_0__6_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_1 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0
       (.A(Q[7:0]),
        .D(dout0_in[0]),
        .O(MEMORY_reg_0_255_0_0_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[7]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__0
       (.A(Q[7:0]),
        .D(dout0_in[1]),
        .O(MEMORY_reg_0_255_0_0__0_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[7]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__1
       (.A(Q[7:0]),
        .D(dout0_in[2]),
        .O(MEMORY_reg_0_255_0_0__1_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[7]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__2
       (.A(Q[7:0]),
        .D(dout0_in[3]),
        .O(MEMORY_reg_0_255_0_0__2_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[7]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__3
       (.A(Q[7:0]),
        .D(dout0_in[4]),
        .O(MEMORY_reg_0_255_0_0__3_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[7]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__4
       (.A(Q[7:0]),
        .D(dout0_in[5]),
        .O(MEMORY_reg_0_255_0_0__4_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[7]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__5
       (.A(Q[7:0]),
        .D(dout0_in[6]),
        .O(MEMORY_reg_0_255_0_0__5_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[7]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    MEMORY_reg_0_255_0_0__6
       (.A(Q[7:0]),
        .D(dout0_in[7]),
        .O(MEMORY_reg_0_255_0_0__6_n_0),
        .WCLK(CLK),
        .WE(\dout_reg[7]_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(dout0_in[0]),
        .O(MEMORY_reg_0_31_0_0_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(dout0_in[1]),
        .O(MEMORY_reg_0_31_0_0__0_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(dout0_in[2]),
        .O(MEMORY_reg_0_31_0_0__1_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(dout0_in[3]),
        .O(MEMORY_reg_0_31_0_0__2_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(dout0_in[4]),
        .O(MEMORY_reg_0_31_0_0__3_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(dout0_in[5]),
        .O(MEMORY_reg_0_31_0_0__4_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(dout0_in[6]),
        .O(MEMORY_reg_0_31_0_0__5_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_0 ));
  (* RTL_RAM_BITS = "3440" *) 
  (* RTL_RAM_NAME = "RAM2/MEMORY_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "415" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    MEMORY_reg_0_31_0_0__6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(dout0_in[7]),
        .O(MEMORY_reg_0_31_0_0__6_n_0),
        .WCLK(CLK),
        .WE(\dout[7]_i_2__0_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[0]_i_1__0 
       (.I0(\dout[0]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0_n_0),
        .O(dout0__0[0]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[0]_i_2__0 
       (.I0(MEMORY_reg_0_31_0_0_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0_n_0),
        .I4(Q[6]),
        .O(\dout[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[1]_i_1__0 
       (.I0(\dout[1]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__0_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__0_n_0),
        .O(dout0__0[1]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[1]_i_2__0 
       (.I0(MEMORY_reg_0_31_0_0__0_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__0_n_0),
        .I4(Q[6]),
        .O(\dout[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[2]_i_1__0 
       (.I0(\dout[2]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__1_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__1_n_0),
        .O(dout0__0[2]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[2]_i_2__0 
       (.I0(MEMORY_reg_0_31_0_0__1_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__1_n_0),
        .I4(Q[6]),
        .O(\dout[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[3]_i_1__0 
       (.I0(\dout[3]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__2_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__2_n_0),
        .O(dout0__0[3]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[3]_i_2__0 
       (.I0(MEMORY_reg_0_31_0_0__2_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__2_n_0),
        .I4(Q[6]),
        .O(\dout[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[4]_i_1__0 
       (.I0(\dout[4]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__3_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__3_n_0),
        .O(dout0__0[4]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[4]_i_2__0 
       (.I0(MEMORY_reg_0_31_0_0__3_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__3_n_0),
        .I4(Q[6]),
        .O(\dout[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[5]_i_1__0 
       (.I0(\dout[5]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__4_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__4_n_0),
        .O(dout0__0[5]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[5]_i_2__0 
       (.I0(MEMORY_reg_0_31_0_0__4_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__4_n_0),
        .I4(Q[6]),
        .O(\dout[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[6]_i_1__0 
       (.I0(\dout[6]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__5_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__5_n_0),
        .O(dout0__0[6]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[6]_i_2__0 
       (.I0(MEMORY_reg_0_31_0_0__5_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__5_n_0),
        .I4(Q[6]),
        .O(\dout[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[7]_i_1__0 
       (.I0(\dout[7]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(MEMORY_reg_0_127_0_0__6_n_0),
        .I3(Q[8]),
        .I4(MEMORY_reg_0_255_0_0__6_n_0),
        .O(dout0__0[7]));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \dout[7]_i_2__0 
       (.I0(MEMORY_reg_0_31_0_0__6_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(MEMORY_reg_0_15_0_0__6_n_0),
        .I4(Q[6]),
        .O(\dout[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(dout0__0[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(dout0__0[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(dout0__0[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(dout0__0[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(dout0__0[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(dout0__0[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(dout0__0[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(dout0__0[7]),
        .Q(dout[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
