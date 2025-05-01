// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu May  1 13:49:58 2025
// Host        : DESKTOP-F3DSQKO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vivado1/part3/part3.gen/sources_1/bd/design_1/ip/design_1_pwm_0_0/design_1_pwm_0_0_sim_netlist.v
// Design      : design_1_pwm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pwm_0_0,pwm,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pwm,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_pwm_0_0
   (clk,
    rst,
    data_ready,
    data,
    pwm_out,
    pwm_ready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input data_ready;
  input [31:0]data;
  output pwm_out;
  output pwm_ready;

  wire clk;
  wire [31:0]data;
  wire data_ready;
  wire pwm_out;
  wire pwm_ready;
  wire rst;

  design_1_pwm_0_0_pwm U0
       (.clk(clk),
        .data(data[7:0]),
        .data_ready(data_ready),
        .pwm_out(pwm_out),
        .pwm_ready(pwm_ready),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "pwm" *) 
module design_1_pwm_0_0_pwm
   (pwm_out,
    pwm_ready,
    data_ready,
    clk,
    data,
    rst);
  output pwm_out;
  output pwm_ready;
  input data_ready;
  input clk;
  input [7:0]data;
  input rst;

  wire clk;
  wire [7:0]count;
  wire \count[6]_i_2_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire [7:0]count_0;
  wire [7:0]data;
  wire data_ready;
  wire [7:0]duty_cycle_latched;
  wire duty_cycle_latched_1;
  wire [7:0]duty_cycle_next;
  wire p_0_in;
  wire pwm_out;
  wire pwm_out_r0_carry_i_1_n_0;
  wire pwm_out_r0_carry_i_2_n_0;
  wire pwm_out_r0_carry_i_3_n_0;
  wire pwm_out_r0_carry_i_4_n_0;
  wire pwm_out_r0_carry_i_5_n_0;
  wire pwm_out_r0_carry_i_6_n_0;
  wire pwm_out_r0_carry_i_7_n_0;
  wire pwm_out_r0_carry_i_8_n_0;
  wire pwm_out_r0_carry_n_1;
  wire pwm_out_r0_carry_n_2;
  wire pwm_out_r0_carry_n_3;
  wire pwm_out_r_i_1_n_0;
  wire pwm_ready;
  wire pwm_ready_r;
  wire pwm_ready_r_i_2_n_0;
  wire pwm_ready_r_i_3_n_0;
  wire pwm_ready_r_i_4_n_0;
  wire pwm_ready_r_i_5_n_0;
  wire rst;
  wire [15:0]sample_timer;
  wire \sample_timer_reg[12]_i_2_n_0 ;
  wire \sample_timer_reg[12]_i_2_n_1 ;
  wire \sample_timer_reg[12]_i_2_n_2 ;
  wire \sample_timer_reg[12]_i_2_n_3 ;
  wire \sample_timer_reg[12]_i_2_n_4 ;
  wire \sample_timer_reg[12]_i_2_n_5 ;
  wire \sample_timer_reg[12]_i_2_n_6 ;
  wire \sample_timer_reg[12]_i_2_n_7 ;
  wire \sample_timer_reg[15]_i_2_n_2 ;
  wire \sample_timer_reg[15]_i_2_n_3 ;
  wire \sample_timer_reg[15]_i_2_n_5 ;
  wire \sample_timer_reg[15]_i_2_n_6 ;
  wire \sample_timer_reg[15]_i_2_n_7 ;
  wire \sample_timer_reg[4]_i_2_n_0 ;
  wire \sample_timer_reg[4]_i_2_n_1 ;
  wire \sample_timer_reg[4]_i_2_n_2 ;
  wire \sample_timer_reg[4]_i_2_n_3 ;
  wire \sample_timer_reg[4]_i_2_n_4 ;
  wire \sample_timer_reg[4]_i_2_n_5 ;
  wire \sample_timer_reg[4]_i_2_n_6 ;
  wire \sample_timer_reg[4]_i_2_n_7 ;
  wire \sample_timer_reg[8]_i_2_n_0 ;
  wire \sample_timer_reg[8]_i_2_n_1 ;
  wire \sample_timer_reg[8]_i_2_n_2 ;
  wire \sample_timer_reg[8]_i_2_n_3 ;
  wire \sample_timer_reg[8]_i_2_n_4 ;
  wire \sample_timer_reg[8]_i_2_n_5 ;
  wire \sample_timer_reg[8]_i_2_n_6 ;
  wire \sample_timer_reg[8]_i_2_n_7 ;
  wire \sample_timer_reg_n_0_[0] ;
  wire \sample_timer_reg_n_0_[10] ;
  wire \sample_timer_reg_n_0_[11] ;
  wire \sample_timer_reg_n_0_[12] ;
  wire \sample_timer_reg_n_0_[13] ;
  wire \sample_timer_reg_n_0_[14] ;
  wire \sample_timer_reg_n_0_[15] ;
  wire \sample_timer_reg_n_0_[1] ;
  wire \sample_timer_reg_n_0_[2] ;
  wire \sample_timer_reg_n_0_[3] ;
  wire \sample_timer_reg_n_0_[4] ;
  wire \sample_timer_reg_n_0_[5] ;
  wire \sample_timer_reg_n_0_[6] ;
  wire \sample_timer_reg_n_0_[7] ;
  wire \sample_timer_reg_n_0_[8] ;
  wire \sample_timer_reg_n_0_[9] ;
  wire [3:0]NLW_pwm_out_r0_carry_O_UNCONNECTED;
  wire [3:2]\NLW_sample_timer_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sample_timer_reg[15]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .O(count_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .O(count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1 
       (.I0(count[3]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .O(count_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_1 
       (.I0(count[4]),
        .I1(count[2]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[3]),
        .O(count_0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count[5]_i_1 
       (.I0(count[5]),
        .I1(count[3]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(count[2]),
        .I5(count[4]),
        .O(count_0[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count[6]_i_1 
       (.I0(count[6]),
        .I1(count[4]),
        .I2(count[2]),
        .I3(\count[6]_i_2_n_0 ),
        .I4(count[3]),
        .I5(count[5]),
        .O(count_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[6]_i_2 
       (.I0(count[0]),
        .I1(count[1]),
        .O(\count[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8CC)) 
    \count[7]_i_1 
       (.I0(\count[7]_i_2_n_0 ),
        .I1(count[7]),
        .I2(\count[7]_i_3_n_0 ),
        .I3(count[6]),
        .O(count_0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[7]_i_2 
       (.I0(count[4]),
        .I1(count[2]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(count[3]),
        .I5(count[5]),
        .O(\count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[7]_i_3 
       (.I0(count[4]),
        .I1(count[2]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[3]),
        .I5(count[5]),
        .O(\count[7]_i_3_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(count_0[0]),
        .Q(count[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(count_0[1]),
        .Q(count[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(count_0[2]),
        .Q(count[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(count_0[3]),
        .Q(count[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(count_0[4]),
        .Q(count[4]));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(count_0[5]),
        .Q(count[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(count_0[6]),
        .Q(count[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(count_0[7]),
        .Q(count[7]));
  LUT3 #(
    .INIT(8'h80)) 
    \duty_cycle_latched[7]_i_1 
       (.I0(count[6]),
        .I1(\count[7]_i_3_n_0 ),
        .I2(count[7]),
        .O(duty_cycle_latched_1));
  FDCE \duty_cycle_latched_reg[0] 
       (.C(clk),
        .CE(duty_cycle_latched_1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(duty_cycle_next[0]),
        .Q(duty_cycle_latched[0]));
  FDCE \duty_cycle_latched_reg[1] 
       (.C(clk),
        .CE(duty_cycle_latched_1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(duty_cycle_next[1]),
        .Q(duty_cycle_latched[1]));
  FDCE \duty_cycle_latched_reg[2] 
       (.C(clk),
        .CE(duty_cycle_latched_1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(duty_cycle_next[2]),
        .Q(duty_cycle_latched[2]));
  FDCE \duty_cycle_latched_reg[3] 
       (.C(clk),
        .CE(duty_cycle_latched_1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(duty_cycle_next[3]),
        .Q(duty_cycle_latched[3]));
  FDCE \duty_cycle_latched_reg[4] 
       (.C(clk),
        .CE(duty_cycle_latched_1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(duty_cycle_next[4]),
        .Q(duty_cycle_latched[4]));
  FDCE \duty_cycle_latched_reg[5] 
       (.C(clk),
        .CE(duty_cycle_latched_1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(duty_cycle_next[5]),
        .Q(duty_cycle_latched[5]));
  FDCE \duty_cycle_latched_reg[6] 
       (.C(clk),
        .CE(duty_cycle_latched_1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(duty_cycle_next[6]),
        .Q(duty_cycle_latched[6]));
  FDCE \duty_cycle_latched_reg[7] 
       (.C(clk),
        .CE(duty_cycle_latched_1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(duty_cycle_next[7]),
        .Q(duty_cycle_latched[7]));
  FDCE \duty_cycle_next_reg[0] 
       (.C(clk),
        .CE(pwm_ready_r),
        .CLR(pwm_out_r_i_1_n_0),
        .D(data[0]),
        .Q(duty_cycle_next[0]));
  FDCE \duty_cycle_next_reg[1] 
       (.C(clk),
        .CE(pwm_ready_r),
        .CLR(pwm_out_r_i_1_n_0),
        .D(data[1]),
        .Q(duty_cycle_next[1]));
  FDCE \duty_cycle_next_reg[2] 
       (.C(clk),
        .CE(pwm_ready_r),
        .CLR(pwm_out_r_i_1_n_0),
        .D(data[2]),
        .Q(duty_cycle_next[2]));
  FDCE \duty_cycle_next_reg[3] 
       (.C(clk),
        .CE(pwm_ready_r),
        .CLR(pwm_out_r_i_1_n_0),
        .D(data[3]),
        .Q(duty_cycle_next[3]));
  FDCE \duty_cycle_next_reg[4] 
       (.C(clk),
        .CE(pwm_ready_r),
        .CLR(pwm_out_r_i_1_n_0),
        .D(data[4]),
        .Q(duty_cycle_next[4]));
  FDCE \duty_cycle_next_reg[5] 
       (.C(clk),
        .CE(pwm_ready_r),
        .CLR(pwm_out_r_i_1_n_0),
        .D(data[5]),
        .Q(duty_cycle_next[5]));
  FDCE \duty_cycle_next_reg[6] 
       (.C(clk),
        .CE(pwm_ready_r),
        .CLR(pwm_out_r_i_1_n_0),
        .D(data[6]),
        .Q(duty_cycle_next[6]));
  FDCE \duty_cycle_next_reg[7] 
       (.C(clk),
        .CE(pwm_ready_r),
        .CLR(pwm_out_r_i_1_n_0),
        .D(data[7]),
        .Q(duty_cycle_next[7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_out_r0_carry
       (.CI(1'b0),
        .CO({p_0_in,pwm_out_r0_carry_n_1,pwm_out_r0_carry_n_2,pwm_out_r0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out_r0_carry_i_1_n_0,pwm_out_r0_carry_i_2_n_0,pwm_out_r0_carry_i_3_n_0,pwm_out_r0_carry_i_4_n_0}),
        .O(NLW_pwm_out_r0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out_r0_carry_i_5_n_0,pwm_out_r0_carry_i_6_n_0,pwm_out_r0_carry_i_7_n_0,pwm_out_r0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20BA)) 
    pwm_out_r0_carry_i_1
       (.I0(duty_cycle_latched[7]),
        .I1(count[6]),
        .I2(duty_cycle_latched[6]),
        .I3(count[7]),
        .O(pwm_out_r0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pwm_out_r0_carry_i_2
       (.I0(count[5]),
        .I1(count[4]),
        .I2(duty_cycle_latched[4]),
        .I3(duty_cycle_latched[5]),
        .O(pwm_out_r0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pwm_out_r0_carry_i_3
       (.I0(count[3]),
        .I1(count[2]),
        .I2(duty_cycle_latched[2]),
        .I3(duty_cycle_latched[3]),
        .O(pwm_out_r0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    pwm_out_r0_carry_i_4
       (.I0(count[1]),
        .I1(count[0]),
        .I2(duty_cycle_latched[0]),
        .I3(duty_cycle_latched[1]),
        .O(pwm_out_r0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pwm_out_r0_carry_i_5
       (.I0(duty_cycle_latched[7]),
        .I1(count[6]),
        .I2(duty_cycle_latched[6]),
        .I3(count[7]),
        .O(pwm_out_r0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pwm_out_r0_carry_i_6
       (.I0(count[5]),
        .I1(duty_cycle_latched[4]),
        .I2(count[4]),
        .I3(duty_cycle_latched[5]),
        .O(pwm_out_r0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pwm_out_r0_carry_i_7
       (.I0(count[3]),
        .I1(duty_cycle_latched[2]),
        .I2(count[2]),
        .I3(duty_cycle_latched[3]),
        .O(pwm_out_r0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pwm_out_r0_carry_i_8
       (.I0(count[1]),
        .I1(duty_cycle_latched[0]),
        .I2(count[0]),
        .I3(duty_cycle_latched[1]),
        .O(pwm_out_r0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_r_i_1
       (.I0(rst),
        .O(pwm_out_r_i_1_n_0));
  FDCE pwm_out_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(p_0_in),
        .Q(pwm_out));
  LUT5 #(
    .INIT(32'h00010000)) 
    pwm_ready_r_i_1
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(data_ready),
        .O(pwm_ready_r));
  LUT4 #(
    .INIT(16'hFFFD)) 
    pwm_ready_r_i_2
       (.I0(\sample_timer_reg_n_0_[5] ),
        .I1(\sample_timer_reg_n_0_[4] ),
        .I2(\sample_timer_reg_n_0_[7] ),
        .I3(\sample_timer_reg_n_0_[6] ),
        .O(pwm_ready_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    pwm_ready_r_i_3
       (.I0(\sample_timer_reg_n_0_[1] ),
        .I1(\sample_timer_reg_n_0_[0] ),
        .I2(\sample_timer_reg_n_0_[2] ),
        .I3(\sample_timer_reg_n_0_[3] ),
        .O(pwm_ready_r_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    pwm_ready_r_i_4
       (.I0(\sample_timer_reg_n_0_[13] ),
        .I1(\sample_timer_reg_n_0_[12] ),
        .I2(\sample_timer_reg_n_0_[15] ),
        .I3(\sample_timer_reg_n_0_[14] ),
        .O(pwm_ready_r_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    pwm_ready_r_i_5
       (.I0(\sample_timer_reg_n_0_[9] ),
        .I1(\sample_timer_reg_n_0_[8] ),
        .I2(\sample_timer_reg_n_0_[11] ),
        .I3(\sample_timer_reg_n_0_[10] ),
        .O(pwm_ready_r_i_5_n_0));
  FDCE pwm_ready_r_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(pwm_ready_r),
        .Q(pwm_ready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sample_timer[0]_i_1 
       (.I0(\sample_timer_reg_n_0_[0] ),
        .O(sample_timer[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[10]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[12]_i_2_n_6 ),
        .O(sample_timer[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[11]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[12]_i_2_n_5 ),
        .O(sample_timer[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[12]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[12]_i_2_n_4 ),
        .O(sample_timer[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[13]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[15]_i_2_n_7 ),
        .O(sample_timer[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[14]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[15]_i_2_n_6 ),
        .O(sample_timer[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[15]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[15]_i_2_n_5 ),
        .O(sample_timer[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[1]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[4]_i_2_n_7 ),
        .O(sample_timer[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[2]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[4]_i_2_n_6 ),
        .O(sample_timer[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[3]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[4]_i_2_n_5 ),
        .O(sample_timer[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[4]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[4]_i_2_n_4 ),
        .O(sample_timer[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[5]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[8]_i_2_n_7 ),
        .O(sample_timer[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[6]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[8]_i_2_n_6 ),
        .O(sample_timer[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[7]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[8]_i_2_n_5 ),
        .O(sample_timer[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[8]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[8]_i_2_n_4 ),
        .O(sample_timer[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sample_timer[9]_i_1 
       (.I0(pwm_ready_r_i_2_n_0),
        .I1(pwm_ready_r_i_3_n_0),
        .I2(pwm_ready_r_i_4_n_0),
        .I3(pwm_ready_r_i_5_n_0),
        .I4(\sample_timer_reg[12]_i_2_n_7 ),
        .O(sample_timer[9]));
  FDCE \sample_timer_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[0]),
        .Q(\sample_timer_reg_n_0_[0] ));
  FDCE \sample_timer_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[10]),
        .Q(\sample_timer_reg_n_0_[10] ));
  FDCE \sample_timer_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[11]),
        .Q(\sample_timer_reg_n_0_[11] ));
  FDCE \sample_timer_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[12]),
        .Q(\sample_timer_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_timer_reg[12]_i_2 
       (.CI(\sample_timer_reg[8]_i_2_n_0 ),
        .CO({\sample_timer_reg[12]_i_2_n_0 ,\sample_timer_reg[12]_i_2_n_1 ,\sample_timer_reg[12]_i_2_n_2 ,\sample_timer_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_timer_reg[12]_i_2_n_4 ,\sample_timer_reg[12]_i_2_n_5 ,\sample_timer_reg[12]_i_2_n_6 ,\sample_timer_reg[12]_i_2_n_7 }),
        .S({\sample_timer_reg_n_0_[12] ,\sample_timer_reg_n_0_[11] ,\sample_timer_reg_n_0_[10] ,\sample_timer_reg_n_0_[9] }));
  FDCE \sample_timer_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[13]),
        .Q(\sample_timer_reg_n_0_[13] ));
  FDCE \sample_timer_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[14]),
        .Q(\sample_timer_reg_n_0_[14] ));
  FDCE \sample_timer_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[15]),
        .Q(\sample_timer_reg_n_0_[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_timer_reg[15]_i_2 
       (.CI(\sample_timer_reg[12]_i_2_n_0 ),
        .CO({\NLW_sample_timer_reg[15]_i_2_CO_UNCONNECTED [3:2],\sample_timer_reg[15]_i_2_n_2 ,\sample_timer_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sample_timer_reg[15]_i_2_O_UNCONNECTED [3],\sample_timer_reg[15]_i_2_n_5 ,\sample_timer_reg[15]_i_2_n_6 ,\sample_timer_reg[15]_i_2_n_7 }),
        .S({1'b0,\sample_timer_reg_n_0_[15] ,\sample_timer_reg_n_0_[14] ,\sample_timer_reg_n_0_[13] }));
  FDCE \sample_timer_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[1]),
        .Q(\sample_timer_reg_n_0_[1] ));
  FDCE \sample_timer_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[2]),
        .Q(\sample_timer_reg_n_0_[2] ));
  FDCE \sample_timer_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[3]),
        .Q(\sample_timer_reg_n_0_[3] ));
  FDCE \sample_timer_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[4]),
        .Q(\sample_timer_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_timer_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\sample_timer_reg[4]_i_2_n_0 ,\sample_timer_reg[4]_i_2_n_1 ,\sample_timer_reg[4]_i_2_n_2 ,\sample_timer_reg[4]_i_2_n_3 }),
        .CYINIT(\sample_timer_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_timer_reg[4]_i_2_n_4 ,\sample_timer_reg[4]_i_2_n_5 ,\sample_timer_reg[4]_i_2_n_6 ,\sample_timer_reg[4]_i_2_n_7 }),
        .S({\sample_timer_reg_n_0_[4] ,\sample_timer_reg_n_0_[3] ,\sample_timer_reg_n_0_[2] ,\sample_timer_reg_n_0_[1] }));
  FDCE \sample_timer_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[5]),
        .Q(\sample_timer_reg_n_0_[5] ));
  FDCE \sample_timer_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[6]),
        .Q(\sample_timer_reg_n_0_[6] ));
  FDCE \sample_timer_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[7]),
        .Q(\sample_timer_reg_n_0_[7] ));
  FDCE \sample_timer_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[8]),
        .Q(\sample_timer_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_timer_reg[8]_i_2 
       (.CI(\sample_timer_reg[4]_i_2_n_0 ),
        .CO({\sample_timer_reg[8]_i_2_n_0 ,\sample_timer_reg[8]_i_2_n_1 ,\sample_timer_reg[8]_i_2_n_2 ,\sample_timer_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sample_timer_reg[8]_i_2_n_4 ,\sample_timer_reg[8]_i_2_n_5 ,\sample_timer_reg[8]_i_2_n_6 ,\sample_timer_reg[8]_i_2_n_7 }),
        .S({\sample_timer_reg_n_0_[8] ,\sample_timer_reg_n_0_[7] ,\sample_timer_reg_n_0_[6] ,\sample_timer_reg_n_0_[5] }));
  FDCE \sample_timer_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_r_i_1_n_0),
        .D(sample_timer[9]),
        .Q(\sample_timer_reg_n_0_[9] ));
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
