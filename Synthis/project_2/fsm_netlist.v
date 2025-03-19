// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Mar 19 20:15:57 2025
// Host        : DESKTOP-M6U87QL running 64-bit major release  (build 9200)
// Command     : write_verilog C:/Users/LAPTOP/Desktop/DEPLOMA/project2_deliverable/Synthis/project_2/fsm_netlist.v
// Design      : SPI_TOP
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (D,
    tx_vaild,
    flag_reg,
    CLK,
    rx_vaild,
    rx_valid_reg,
    SR,
    Q,
    WEA,
    \rx_data_reg[9] ,
    \tx_data_temp_reg[6] ,
    \tx_data_temp_reg[5] ,
    E);
  output [7:0]D;
  output tx_vaild;
  output flag_reg;
  input CLK;
  input rx_vaild;
  input rx_valid_reg;
  input [0:0]SR;
  input [7:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[9] ;
  input \tx_data_temp_reg[6] ;
  input [5:0]\tx_data_temp_reg[5] ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [7:0]addr;
  wire \c_2[3]_i_4_n_0 ;
  wire \c_2[3]_i_5_n_0 ;
  wire \c_2[3]_i_6_n_0 ;
  wire flag_reg;
  wire \rx_data_reg[9] ;
  wire rx_vaild;
  wire rx_valid_reg;
  wire [5:0]\tx_data_temp_reg[5] ;
  wire \tx_data_temp_reg[6] ;
  wire tx_vaild;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(addr[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(addr[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(addr[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(addr[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(addr[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(addr[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(addr[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(addr[7]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \c_2[3]_i_3 
       (.I0(\c_2[3]_i_4_n_0 ),
        .I1(\c_2[3]_i_5_n_0 ),
        .I2(\c_2[3]_i_6_n_0 ),
        .I3(\tx_data_temp_reg[6] ),
        .O(flag_reg));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \c_2[3]_i_4 
       (.I0(D[1]),
        .I1(\tx_data_temp_reg[5] [1]),
        .I2(D[2]),
        .I3(\tx_data_temp_reg[5] [2]),
        .O(\c_2[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \c_2[3]_i_5 
       (.I0(D[0]),
        .I1(\tx_data_temp_reg[5] [0]),
        .I2(D[4]),
        .I3(\tx_data_temp_reg[5] [4]),
        .O(\c_2[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \c_2[3]_i_6 
       (.I0(D[5]),
        .I1(\tx_data_temp_reg[5] [5]),
        .I2(D[3]),
        .I3(\tx_data_temp_reg[5] [3]),
        .O(\c_2[3]_i_6_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(D),
        .ENARDEN(rx_vaild),
        .ENBWREN(rx_valid_reg),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[9] ),
        .Q(tx_vaild),
        .R(SR));
endmodule

module SPI
   (MISO_OBUF,
    SR,
    rx_vaild,
    WEA,
    Q,
    E,
    flag_reg_0,
    MISO_reg_0,
    tx_valid_reg,
    mem_reg,
    CLK,
    rst_n_IBUF,
    SS_n_IBUF,
    D,
    mem_reg_0,
    tx_vaild,
    mem_reg_1);
  output MISO_OBUF;
  output [0:0]SR;
  output rx_vaild;
  output [0:0]WEA;
  output [7:0]Q;
  output [0:0]E;
  output flag_reg_0;
  output [5:0]MISO_reg_0;
  output tx_valid_reg;
  output mem_reg;
  input CLK;
  input rst_n_IBUF;
  input SS_n_IBUF;
  input [0:0]D;
  input mem_reg_0;
  input tx_vaild;
  input [7:0]mem_reg_1;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_i_5_n_0;
  wire [5:0]MISO_reg_0;
  wire MISO_reg_i_2_n_0;
  wire [7:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire c_1;
  wire \c_1[0]_i_1_n_0 ;
  wire \c_1[1]_i_1_n_0 ;
  wire \c_1[2]_i_1_n_0 ;
  wire \c_1[3]_i_2_n_0 ;
  wire \c_1[3]_i_3_n_0 ;
  wire \c_1_reg_n_0_[0] ;
  wire \c_1_reg_n_0_[1] ;
  wire \c_1_reg_n_0_[2] ;
  wire \c_1_reg_n_0_[3] ;
  wire \c_2[0]_i_1_n_0 ;
  wire \c_2[1]_i_1_n_0 ;
  wire \c_2[2]_i_1_n_0 ;
  wire \c_2[3]_i_1_n_0 ;
  wire \c_2[3]_i_2_n_0 ;
  wire \c_2[3]_i_8_n_0 ;
  wire \c_2_reg_n_0_[0] ;
  wire \c_2_reg_n_0_[1] ;
  wire \c_2_reg_n_0_[2] ;
  wire \c_2_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire f_i_1_n_0;
  wire f_reg_n_0;
  wire flag_i_1_n_0;
  wire flag_i_2_n_0;
  wire flag_i_3_n_0;
  wire flag_reg_0;
  wire flag_reg_n_0;
  wire mem_reg;
  wire mem_reg_0;
  wire [7:0]mem_reg_1;
  wire [2:0]ns;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data_temp[0]_i_1_n_0 ;
  wire \rx_data_temp[1]_i_1_n_0 ;
  wire \rx_data_temp[2]_i_1_n_0 ;
  wire \rx_data_temp[3]_i_1_n_0 ;
  wire \rx_data_temp[4]_i_1_n_0 ;
  wire \rx_data_temp[5]_i_1_n_0 ;
  wire \rx_data_temp[6]_i_1_n_0 ;
  wire \rx_data_temp[7]_i_1_n_0 ;
  wire \rx_data_temp[8]_i_1_n_0 ;
  wire \rx_data_temp[9]_i_1_n_0 ;
  wire \rx_data_temp[9]_i_2_n_0 ;
  wire \rx_data_temp_reg_n_0_[0] ;
  wire \rx_data_temp_reg_n_0_[1] ;
  wire \rx_data_temp_reg_n_0_[2] ;
  wire \rx_data_temp_reg_n_0_[3] ;
  wire \rx_data_temp_reg_n_0_[4] ;
  wire \rx_data_temp_reg_n_0_[5] ;
  wire \rx_data_temp_reg_n_0_[6] ;
  wire \rx_data_temp_reg_n_0_[7] ;
  wire \rx_data_temp_reg_n_0_[8] ;
  wire \rx_data_temp_reg_n_0_[9] ;
  wire rx_vaild;
  wire rx_valid_i_1_n_0;
  wire \tx_data_temp[7]_i_1_n_0 ;
  wire \tx_data_temp_reg_n_0_[6] ;
  wire \tx_data_temp_reg_n_0_[7] ;
  wire tx_vaild;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'h00000000FFFFF0BF)) 
    \FSM_gray_cs[0]_i_1 
       (.I0(flag_reg_n_0),
        .I1(D),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(SS_n_IBUF),
        .O(ns[0]));
  LUT4 #(
    .INIT(16'h00FE)) 
    \FSM_gray_cs[1]_i_1 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(SS_n_IBUF),
        .O(ns[1]));
  LUT6 #(
    .INIT(64'h0000FFFF00002000)) 
    \FSM_gray_cs[2]_i_1 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(D),
        .I3(flag_reg_n_0),
        .I4(SS_n_IBUF),
        .I5(cs[2]),
        .O(ns[2]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h00000080)) 
    MISO_i_1
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(f_reg_n_0),
        .I4(mem_reg_0),
        .O(MISO_i_1_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    MISO_i_3
       (.I0(\c_2_reg_n_0_[2] ),
        .I1(\c_2_reg_n_0_[0] ),
        .I2(\c_2_reg_n_0_[1] ),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    MISO_i_4
       (.I0(\tx_data_temp_reg_n_0_[6] ),
        .I1(MISO_reg_0[4]),
        .I2(\tx_data_temp_reg_n_0_[7] ),
        .I3(\c_2_reg_n_0_[0] ),
        .I4(\c_2_reg_n_0_[1] ),
        .I5(MISO_reg_0[5]),
        .O(MISO_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    MISO_i_5
       (.I0(MISO_reg_0[2]),
        .I1(MISO_reg_0[0]),
        .I2(MISO_reg_0[3]),
        .I3(\c_2_reg_n_0_[0] ),
        .I4(\c_2_reg_n_0_[1] ),
        .I5(MISO_reg_0[1]),
        .O(MISO_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(MISO_reg_i_2_n_0),
        .Q(MISO_OBUF),
        .R(SR));
  MUXF7 MISO_reg_i_2
       (.I0(MISO_i_4_n_0),
        .I1(MISO_i_5_n_0),
        .O(MISO_reg_i_2_n_0),
        .S(MISO_i_3_n_0));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \addr[7]_i_1 
       (.I0(rx_data[8]),
        .I1(rst_n_IBUF),
        .I2(rx_vaild),
        .O(E));
  LUT6 #(
    .INIT(64'h00AA00AA00AA00A8)) 
    \c_1[0]_i_1 
       (.I0(cs[1]),
        .I1(\c_1_reg_n_0_[3] ),
        .I2(\c_1_reg_n_0_[2] ),
        .I3(\c_1_reg_n_0_[0] ),
        .I4(\c_1_reg_n_0_[1] ),
        .I5(cs[0]),
        .O(\c_1[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9F)) 
    \c_1[1]_i_1 
       (.I0(\c_1_reg_n_0_[0] ),
        .I1(\c_1_reg_n_0_[1] ),
        .I2(cs[1]),
        .O(\c_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A00AA0A0A008)) 
    \c_1[2]_i_1 
       (.I0(cs[1]),
        .I1(\c_1_reg_n_0_[3] ),
        .I2(\c_1_reg_n_0_[2] ),
        .I3(\c_1_reg_n_0_[0] ),
        .I4(\c_1_reg_n_0_[1] ),
        .I5(cs[0]),
        .O(\c_1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h45000F0F)) 
    \c_1[3]_i_1 
       (.I0(\c_1[3]_i_3_n_0 ),
        .I1(f_reg_n_0),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(cs[0]),
        .O(c_1));
  LUT5 #(
    .INIT(32'hFE01FFFF)) 
    \c_1[3]_i_2 
       (.I0(\c_1_reg_n_0_[2] ),
        .I1(\c_1_reg_n_0_[0] ),
        .I2(\c_1_reg_n_0_[1] ),
        .I3(\c_1_reg_n_0_[3] ),
        .I4(cs[1]),
        .O(\c_1[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \c_1[3]_i_3 
       (.I0(\c_1_reg_n_0_[1] ),
        .I1(\c_1_reg_n_0_[0] ),
        .I2(\c_1_reg_n_0_[2] ),
        .I3(\c_1_reg_n_0_[3] ),
        .O(\c_1[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_reg[0] 
       (.C(CLK),
        .CE(c_1),
        .D(\c_1[0]_i_1_n_0 ),
        .Q(\c_1_reg_n_0_[0] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \c_1_reg[1] 
       (.C(CLK),
        .CE(c_1),
        .D(\c_1[1]_i_1_n_0 ),
        .Q(\c_1_reg_n_0_[1] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_reg[2] 
       (.C(CLK),
        .CE(c_1),
        .D(\c_1[2]_i_1_n_0 ),
        .Q(\c_1_reg_n_0_[2] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \c_1_reg[3] 
       (.C(CLK),
        .CE(c_1),
        .D(\c_1[3]_i_2_n_0 ),
        .Q(\c_1_reg_n_0_[3] ),
        .S(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \c_2[0]_i_1 
       (.I0(\c_2_reg_n_0_[0] ),
        .I1(cs[2]),
        .I2(mem_reg_0),
        .O(\c_2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2002)) 
    \c_2[1]_i_1 
       (.I0(cs[2]),
        .I1(mem_reg_0),
        .I2(\c_2_reg_n_0_[0] ),
        .I3(\c_2_reg_n_0_[1] ),
        .O(\c_2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E100)) 
    \c_2[2]_i_1 
       (.I0(\c_2_reg_n_0_[1] ),
        .I1(\c_2_reg_n_0_[0] ),
        .I2(\c_2_reg_n_0_[2] ),
        .I3(cs[2]),
        .I4(mem_reg_0),
        .O(\c_2[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40030000)) 
    \c_2[3]_i_1 
       (.I0(f_reg_n_0),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(rst_n_IBUF),
        .O(\c_2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD5555)) 
    \c_2[3]_i_2 
       (.I0(cs[0]),
        .I1(\c_2_reg_n_0_[1] ),
        .I2(\c_2_reg_n_0_[0] ),
        .I3(\c_2_reg_n_0_[2] ),
        .I4(\c_2_reg_n_0_[3] ),
        .I5(mem_reg_0),
        .O(\c_2[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF66FF66FF6FFFF)) 
    \c_2[3]_i_7 
       (.I0(\tx_data_temp_reg_n_0_[6] ),
        .I1(mem_reg_1[6]),
        .I2(\tx_data_temp_reg_n_0_[7] ),
        .I3(mem_reg_1[7]),
        .I4(\c_2_reg_n_0_[3] ),
        .I5(\c_2[3]_i_8_n_0 ),
        .O(flag_reg_0));
  LUT3 #(
    .INIT(8'hFE)) 
    \c_2[3]_i_8 
       (.I0(\c_2_reg_n_0_[2] ),
        .I1(\c_2_reg_n_0_[0] ),
        .I2(\c_2_reg_n_0_[1] ),
        .O(\c_2[3]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_2_reg[0] 
       (.C(CLK),
        .CE(\c_2[3]_i_1_n_0 ),
        .D(\c_2[0]_i_1_n_0 ),
        .Q(\c_2_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \c_2_reg[1] 
       (.C(CLK),
        .CE(\c_2[3]_i_1_n_0 ),
        .D(\c_2[1]_i_1_n_0 ),
        .Q(\c_2_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \c_2_reg[2] 
       (.C(CLK),
        .CE(\c_2[3]_i_1_n_0 ),
        .D(\c_2[2]_i_1_n_0 ),
        .Q(\c_2_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \c_2_reg[3] 
       (.C(CLK),
        .CE(\c_2[3]_i_1_n_0 ),
        .D(\c_2[3]_i_2_n_0 ),
        .Q(\c_2_reg_n_0_[3] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h7F01FF01FF00FF00)) 
    f_i_1
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(f_reg_n_0),
        .I4(\c_1[3]_i_3_n_0 ),
        .I5(rst_n_IBUF),
        .O(f_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    f_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(f_i_1_n_0),
        .Q(f_reg_n_0),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h7F557F7F40554040)) 
    flag_i_1
       (.I0(cs[2]),
        .I1(mem_reg_0),
        .I2(flag_i_2_n_0),
        .I3(cs[0]),
        .I4(flag_i_3_n_0),
        .I5(flag_reg_n_0),
        .O(flag_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    flag_i_2
       (.I0(f_reg_n_0),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .O(flag_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    flag_i_3
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(\c_1_reg_n_0_[3] ),
        .I3(\c_1_reg_n_0_[2] ),
        .I4(\c_1_reg_n_0_[0] ),
        .I5(\c_1_reg_n_0_[1] ),
        .O(flag_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(flag_i_1_n_0),
        .Q(flag_reg_n_0),
        .R(SR));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_vaild),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_2
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT3 #(
    .INIT(8'h40)) 
    mem_reg_i_3
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rst_n_IBUF),
        .O(WEA));
  LUT5 #(
    .INIT(32'h8000F000)) 
    \rx_data[9]_i_1 
       (.I0(cs[0]),
        .I1(f_reg_n_0),
        .I2(\c_1[3]_i_3_n_0 ),
        .I3(cs[1]),
        .I4(cs[2]),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[8] ),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data_temp_reg_n_0_[9] ),
        .Q(rx_data[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000020)) 
    \rx_data_temp[0]_i_1 
       (.I0(\rx_data_temp[9]_i_2_n_0 ),
        .I1(\c_1_reg_n_0_[1] ),
        .I2(\c_1_reg_n_0_[0] ),
        .I3(\c_1_reg_n_0_[2] ),
        .I4(\c_1_reg_n_0_[3] ),
        .O(\rx_data_temp[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \rx_data_temp[1]_i_1 
       (.I0(\rx_data_temp[9]_i_2_n_0 ),
        .I1(\c_1_reg_n_0_[1] ),
        .I2(\c_1_reg_n_0_[0] ),
        .I3(\c_1_reg_n_0_[2] ),
        .I4(\c_1_reg_n_0_[3] ),
        .O(\rx_data_temp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \rx_data_temp[2]_i_1 
       (.I0(\rx_data_temp[9]_i_2_n_0 ),
        .I1(\c_1_reg_n_0_[1] ),
        .I2(\c_1_reg_n_0_[0] ),
        .I3(\c_1_reg_n_0_[2] ),
        .I4(\c_1_reg_n_0_[3] ),
        .O(\rx_data_temp[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \rx_data_temp[3]_i_1 
       (.I0(\rx_data_temp[9]_i_2_n_0 ),
        .I1(\c_1_reg_n_0_[1] ),
        .I2(\c_1_reg_n_0_[0] ),
        .I3(\c_1_reg_n_0_[2] ),
        .I4(\c_1_reg_n_0_[3] ),
        .O(\rx_data_temp[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \rx_data_temp[4]_i_1 
       (.I0(\rx_data_temp[9]_i_2_n_0 ),
        .I1(\c_1_reg_n_0_[1] ),
        .I2(\c_1_reg_n_0_[0] ),
        .I3(\c_1_reg_n_0_[2] ),
        .I4(\c_1_reg_n_0_[3] ),
        .O(\rx_data_temp[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \rx_data_temp[5]_i_1 
       (.I0(\rx_data_temp[9]_i_2_n_0 ),
        .I1(\c_1_reg_n_0_[1] ),
        .I2(\c_1_reg_n_0_[0] ),
        .I3(\c_1_reg_n_0_[2] ),
        .I4(\c_1_reg_n_0_[3] ),
        .O(\rx_data_temp[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rx_data_temp[6]_i_1 
       (.I0(\rx_data_temp[9]_i_2_n_0 ),
        .I1(\c_1_reg_n_0_[1] ),
        .I2(\c_1_reg_n_0_[0] ),
        .I3(\c_1_reg_n_0_[2] ),
        .I4(\c_1_reg_n_0_[3] ),
        .O(\rx_data_temp[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \rx_data_temp[7]_i_1 
       (.I0(\rx_data_temp[9]_i_2_n_0 ),
        .I1(\c_1_reg_n_0_[1] ),
        .I2(\c_1_reg_n_0_[0] ),
        .I3(\c_1_reg_n_0_[2] ),
        .I4(\c_1_reg_n_0_[3] ),
        .O(\rx_data_temp[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \rx_data_temp[8]_i_1 
       (.I0(\c_1_reg_n_0_[2] ),
        .I1(\c_1_reg_n_0_[3] ),
        .I2(\rx_data_temp[9]_i_2_n_0 ),
        .I3(\c_1_reg_n_0_[0] ),
        .I4(\c_1_reg_n_0_[1] ),
        .O(\rx_data_temp[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \rx_data_temp[9]_i_1 
       (.I0(\c_1_reg_n_0_[2] ),
        .I1(\c_1_reg_n_0_[3] ),
        .I2(\rx_data_temp[9]_i_2_n_0 ),
        .I3(\c_1_reg_n_0_[1] ),
        .I4(\c_1_reg_n_0_[0] ),
        .O(\rx_data_temp[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08FF000000000000)) 
    \rx_data_temp[9]_i_2 
       (.I0(cs[0]),
        .I1(f_reg_n_0),
        .I2(\c_1[3]_i_3_n_0 ),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(rst_n_IBUF),
        .O(\rx_data_temp[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[0] 
       (.C(CLK),
        .CE(\rx_data_temp[0]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[1] 
       (.C(CLK),
        .CE(\rx_data_temp[1]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[2] 
       (.C(CLK),
        .CE(\rx_data_temp[2]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[3] 
       (.C(CLK),
        .CE(\rx_data_temp[3]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[4] 
       (.C(CLK),
        .CE(\rx_data_temp[4]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[5] 
       (.C(CLK),
        .CE(\rx_data_temp[5]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[6] 
       (.C(CLK),
        .CE(\rx_data_temp[6]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[7] 
       (.C(CLK),
        .CE(\rx_data_temp[7]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[8] 
       (.C(CLK),
        .CE(\rx_data_temp[8]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[8] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_temp_reg[9] 
       (.C(CLK),
        .CE(\rx_data_temp[9]_i_1_n_0 ),
        .D(D),
        .Q(\rx_data_temp_reg_n_0_[9] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFAA8000F000)) 
    rx_valid_i_1
       (.I0(cs[0]),
        .I1(f_reg_n_0),
        .I2(\c_1[3]_i_3_n_0 ),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(rx_vaild),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_vaild),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \tx_data_temp[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(tx_vaild),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(f_reg_n_0),
        .O(\tx_data_temp[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_temp_reg[0] 
       (.C(CLK),
        .CE(\tx_data_temp[7]_i_1_n_0 ),
        .D(mem_reg_1[0]),
        .Q(MISO_reg_0[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_temp_reg[1] 
       (.C(CLK),
        .CE(\tx_data_temp[7]_i_1_n_0 ),
        .D(mem_reg_1[1]),
        .Q(MISO_reg_0[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_temp_reg[2] 
       (.C(CLK),
        .CE(\tx_data_temp[7]_i_1_n_0 ),
        .D(mem_reg_1[2]),
        .Q(MISO_reg_0[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_temp_reg[3] 
       (.C(CLK),
        .CE(\tx_data_temp[7]_i_1_n_0 ),
        .D(mem_reg_1[3]),
        .Q(MISO_reg_0[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_temp_reg[4] 
       (.C(CLK),
        .CE(\tx_data_temp[7]_i_1_n_0 ),
        .D(mem_reg_1[4]),
        .Q(MISO_reg_0[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_temp_reg[5] 
       (.C(CLK),
        .CE(\tx_data_temp[7]_i_1_n_0 ),
        .D(mem_reg_1[5]),
        .Q(MISO_reg_0[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_temp_reg[6] 
       (.C(CLK),
        .CE(\tx_data_temp[7]_i_1_n_0 ),
        .D(mem_reg_1[6]),
        .Q(\tx_data_temp_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_temp_reg[7] 
       (.C(CLK),
        .CE(\tx_data_temp[7]_i_1_n_0 ),
        .D(mem_reg_1[7]),
        .Q(\tx_data_temp_reg_n_0_[7] ),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    tx_valid_i_1
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rx_vaild),
        .I3(tx_vaild),
        .O(tx_valid_reg));
endmodule

(* addr_size = "8" *) (* mem_depth = "256" *) (* rx_data_width = "10" *) 
(* tx_data_width = "8" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_TOP
   (MOSI,
    SS_n,
    clk,
    rst_n,
    MISO);
  input MOSI;
  input SS_n;
  input clk;
  input rst_n;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire ram_n_9;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire rx_vaild;
  wire spi_n_1;
  wire spi_n_12;
  wire spi_n_13;
  wire spi_n_14;
  wire spi_n_15;
  wire spi_n_16;
  wire spi_n_17;
  wire spi_n_18;
  wire spi_n_19;
  wire spi_n_20;
  wire spi_n_21;
  wire [7:0]tx_data;
  wire tx_vaild;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  RAM ram
       (.CLK(clk_IBUF_BUFG),
        .D(tx_data),
        .E(spi_n_12),
        .Q(rx_data),
        .SR(spi_n_1),
        .WEA(mem),
        .flag_reg(ram_n_9),
        .\rx_data_reg[9] (spi_n_20),
        .rx_vaild(rx_vaild),
        .rx_valid_reg(spi_n_21),
        .\tx_data_temp_reg[5] ({spi_n_14,spi_n_15,spi_n_16,spi_n_17,spi_n_18,spi_n_19}),
        .\tx_data_temp_reg[6] (spi_n_13),
        .tx_vaild(tx_vaild));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI spi
       (.CLK(clk_IBUF_BUFG),
        .D(MOSI_IBUF),
        .E(spi_n_12),
        .MISO_OBUF(MISO_OBUF),
        .MISO_reg_0({spi_n_14,spi_n_15,spi_n_16,spi_n_17,spi_n_18,spi_n_19}),
        .Q(rx_data),
        .SR(spi_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .flag_reg_0(spi_n_13),
        .mem_reg(spi_n_21),
        .mem_reg_0(ram_n_9),
        .mem_reg_1(tx_data),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_vaild(rx_vaild),
        .tx_vaild(tx_vaild),
        .tx_valid_reg(spi_n_20));
endmodule
