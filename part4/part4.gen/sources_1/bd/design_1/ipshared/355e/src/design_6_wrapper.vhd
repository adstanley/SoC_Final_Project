--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Fri Apr 25 23:00:47 2025
--Host        : DESKTOP-F3DSQKO running 64-bit major release  (build 9200)
--Command     : generate_target design_6_wrapper.bd
--Design      : design_6_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_6_wrapper is
  port (
    clk_100MHz : in STD_LOGIC;
    clk_rst : in STD_LOGIC;
    hdmi_tx_0_tmds_clk_n : out STD_LOGIC;
    hdmi_tx_0_tmds_clk_p : out STD_LOGIC;
    hdmi_tx_0_tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_0_tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i_Switch_0 : in STD_LOGIC;
    i_Switch_1 : in STD_LOGIC;
    i_Switch_2 : in STD_LOGIC;
    i_Switch_3 : in STD_LOGIC;
    i_Switch_4 : in STD_LOGIC;
    o_Ball_X_Dir_2_0 : out STD_LOGIC;
    o_Ball_Y_2_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_Ball_Y_Dir_2_0 : out STD_LOGIC;
    o_P2_Paddle_Y_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rst_0 : in STD_LOGIC
  );
end design_6_wrapper;

architecture STRUCTURE of design_6_wrapper is
  component design_6 is
  port (
    hdmi_tx_0_tmds_clk_n : out STD_LOGIC;
    hdmi_tx_0_tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_0_tmds_clk_p : out STD_LOGIC;
    hdmi_tx_0_tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i_Switch_0 : in STD_LOGIC;
    i_Switch_1 : in STD_LOGIC;
    i_Switch_2 : in STD_LOGIC;
    i_Switch_3 : in STD_LOGIC;
    i_Switch_4 : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    rst_0 : in STD_LOGIC;
    clk_rst : in STD_LOGIC;
    o_Ball_X_Dir_2_0 : out STD_LOGIC;
    o_Ball_Y_2_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_Ball_Y_Dir_2_0 : out STD_LOGIC;
    o_P2_Paddle_Y_0 : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_6;
begin
design_6_i: component design_6
     port map (
      clk_100MHz => clk_100MHz,
      clk_rst => clk_rst,
      hdmi_tx_0_tmds_clk_n => hdmi_tx_0_tmds_clk_n,
      hdmi_tx_0_tmds_clk_p => hdmi_tx_0_tmds_clk_p,
      hdmi_tx_0_tmds_data_n(2 downto 0) => hdmi_tx_0_tmds_data_n(2 downto 0),
      hdmi_tx_0_tmds_data_p(2 downto 0) => hdmi_tx_0_tmds_data_p(2 downto 0),
      i_Switch_0 => i_Switch_0,
      i_Switch_1 => i_Switch_1,
      i_Switch_2 => i_Switch_2,
      i_Switch_3 => i_Switch_3,
      i_Switch_4 => i_Switch_4,
      o_Ball_X_Dir_2_0 => o_Ball_X_Dir_2_0,
      o_Ball_Y_2_0(5 downto 0) => o_Ball_Y_2_0(5 downto 0),
      o_Ball_Y_Dir_2_0 => o_Ball_Y_Dir_2_0,
      o_P2_Paddle_Y_0(5 downto 0) => o_P2_Paddle_Y_0(5 downto 0),
      rst_0 => rst_0
    );
end STRUCTURE;
