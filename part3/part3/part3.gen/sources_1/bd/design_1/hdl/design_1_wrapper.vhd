--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Thu May  1 13:48:57 2025
--Host        : DESKTOP-F3DSQKO running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SPKL : out STD_LOGIC;
    SPKR : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    gpio : in STD_LOGIC_VECTOR ( 1 downto 0 );
    hdmi_tx_0_tmds_clk_n_port_out : out STD_LOGIC;
    hdmi_tx_0_tmds_clk_p_port_out : out STD_LOGIC;
    hdmi_tx_0_tmds_data_n_port_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_0_tmds_data_p_port_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    rst_rtl : in STD_LOGIC;
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    rst_rtl : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    gpio : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SPKL : out STD_LOGIC;
    SPKR : out STD_LOGIC;
    hdmi_tx_0_tmds_clk_n_port_out : out STD_LOGIC;
    hdmi_tx_0_tmds_data_n_port_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_0_tmds_clk_p_port_out : out STD_LOGIC;
    hdmi_tx_0_tmds_data_p_port_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      LED(7 downto 0) => LED(7 downto 0),
      SPKL => SPKL,
      SPKR => SPKR,
      clk_100MHz => clk_100MHz,
      gpio(1 downto 0) => gpio(1 downto 0),
      hdmi_tx_0_tmds_clk_n_port_out => hdmi_tx_0_tmds_clk_n_port_out,
      hdmi_tx_0_tmds_clk_p_port_out => hdmi_tx_0_tmds_clk_p_port_out,
      hdmi_tx_0_tmds_data_n_port_out(2 downto 0) => hdmi_tx_0_tmds_data_n_port_out(2 downto 0),
      hdmi_tx_0_tmds_data_p_port_out(2 downto 0) => hdmi_tx_0_tmds_data_p_port_out(2 downto 0),
      rst => rst,
      rst_rtl => rst_rtl,
      uart_rtl_0_rxd => uart_rtl_0_rxd,
      uart_rtl_0_txd => uart_rtl_0_txd
    );
end STRUCTURE;
