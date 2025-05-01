-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu May  1 13:37:59 2025
-- Host        : DESKTOP-F3DSQKO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Vivado1/part4/part4.gen/sources_1/bd/design_1/ip/design_1_pwm_0_0/design_1_pwm_0_0_sim_netlist.vhdl
-- Design      : design_1_pwm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm_0_0_pwm is
  port (
    pwm_out : out STD_LOGIC;
    pwm_ready : out STD_LOGIC;
    data_ready : in STD_LOGIC;
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pwm_0_0_pwm : entity is "pwm";
end design_1_pwm_0_0_pwm;

architecture STRUCTURE of design_1_pwm_0_0_pwm is
  signal count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count[6]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_3_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal duty_cycle_latched : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal duty_cycle_latched_1 : STD_LOGIC;
  signal duty_cycle_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal pwm_out_r0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_out_r0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_out_r0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_out_r0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_out_r0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_out_r0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_out_r0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_out_r0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_out_r0_carry_n_1 : STD_LOGIC;
  signal pwm_out_r0_carry_n_2 : STD_LOGIC;
  signal pwm_out_r0_carry_n_3 : STD_LOGIC;
  signal pwm_out_r_i_1_n_0 : STD_LOGIC;
  signal pwm_ready_r : STD_LOGIC;
  signal pwm_ready_r_i_2_n_0 : STD_LOGIC;
  signal pwm_ready_r_i_3_n_0 : STD_LOGIC;
  signal pwm_ready_r_i_4_n_0 : STD_LOGIC;
  signal pwm_ready_r_i_5_n_0 : STD_LOGIC;
  signal sample_timer : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sample_timer_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \sample_timer_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \sample_timer_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \sample_timer_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \sample_timer_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \sample_timer_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \sample_timer_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \sample_timer_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \sample_timer_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \sample_timer_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \sample_timer_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \sample_timer_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \sample_timer_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \sample_timer_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \sample_timer_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \sample_timer_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \sample_timer_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \sample_timer_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \sample_timer_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \sample_timer_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \sample_timer_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \sample_timer_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sample_timer_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sample_timer_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sample_timer_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \sample_timer_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \sample_timer_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \sample_timer_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \sample_timer_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[0]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[10]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[11]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[12]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[13]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[14]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[15]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[2]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[3]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[4]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[5]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[6]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[7]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[8]\ : STD_LOGIC;
  signal \sample_timer_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_pwm_out_r0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sample_timer_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sample_timer_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[6]_i_2\ : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_out_r0_carry : label is 11;
  attribute SOFT_HLUTNM of pwm_ready_r_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_timer[0]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sample_timer_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_timer_reg[15]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_timer_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_timer_reg[8]_i_2\ : label is 35;
begin
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => count_0(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      O => count_0(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(0),
      O => count_0(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count(3),
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      O => count_0(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count(4),
      I1 => count(2),
      I2 => count(0),
      I3 => count(1),
      I4 => count(3),
      O => count_0(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count(5),
      I1 => count(3),
      I2 => count(1),
      I3 => count(0),
      I4 => count(2),
      I5 => count(4),
      O => count_0(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count(6),
      I1 => count(4),
      I2 => count(2),
      I3 => \count[6]_i_2_n_0\,
      I4 => count(3),
      I5 => count(5),
      O => count_0(6)
    );
\count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      O => \count[6]_i_2_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8CC"
    )
        port map (
      I0 => \count[7]_i_2_n_0\,
      I1 => count(7),
      I2 => \count[7]_i_3_n_0\,
      I3 => count(6),
      O => count_0(7)
    );
\count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => count(4),
      I1 => count(2),
      I2 => count(1),
      I3 => count(0),
      I4 => count(3),
      I5 => count(5),
      O => \count[7]_i_2_n_0\
    );
\count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count(4),
      I1 => count(2),
      I2 => count(0),
      I3 => count(1),
      I4 => count(3),
      I5 => count(5),
      O => \count[7]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => count_0(0),
      Q => count(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => count_0(1),
      Q => count(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => count_0(2),
      Q => count(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => count_0(3),
      Q => count(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => count_0(4),
      Q => count(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => count_0(5),
      Q => count(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => count_0(6),
      Q => count(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => count_0(7),
      Q => count(7)
    );
\duty_cycle_latched[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => count(6),
      I1 => \count[7]_i_3_n_0\,
      I2 => count(7),
      O => duty_cycle_latched_1
    );
\duty_cycle_latched_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => duty_cycle_latched_1,
      CLR => pwm_out_r_i_1_n_0,
      D => duty_cycle_next(0),
      Q => duty_cycle_latched(0)
    );
\duty_cycle_latched_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => duty_cycle_latched_1,
      CLR => pwm_out_r_i_1_n_0,
      D => duty_cycle_next(1),
      Q => duty_cycle_latched(1)
    );
\duty_cycle_latched_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => duty_cycle_latched_1,
      CLR => pwm_out_r_i_1_n_0,
      D => duty_cycle_next(2),
      Q => duty_cycle_latched(2)
    );
\duty_cycle_latched_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => duty_cycle_latched_1,
      CLR => pwm_out_r_i_1_n_0,
      D => duty_cycle_next(3),
      Q => duty_cycle_latched(3)
    );
\duty_cycle_latched_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => duty_cycle_latched_1,
      CLR => pwm_out_r_i_1_n_0,
      D => duty_cycle_next(4),
      Q => duty_cycle_latched(4)
    );
\duty_cycle_latched_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => duty_cycle_latched_1,
      CLR => pwm_out_r_i_1_n_0,
      D => duty_cycle_next(5),
      Q => duty_cycle_latched(5)
    );
\duty_cycle_latched_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => duty_cycle_latched_1,
      CLR => pwm_out_r_i_1_n_0,
      D => duty_cycle_next(6),
      Q => duty_cycle_latched(6)
    );
\duty_cycle_latched_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => duty_cycle_latched_1,
      CLR => pwm_out_r_i_1_n_0,
      D => duty_cycle_next(7),
      Q => duty_cycle_latched(7)
    );
\duty_cycle_next_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pwm_ready_r,
      CLR => pwm_out_r_i_1_n_0,
      D => data(0),
      Q => duty_cycle_next(0)
    );
\duty_cycle_next_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pwm_ready_r,
      CLR => pwm_out_r_i_1_n_0,
      D => data(1),
      Q => duty_cycle_next(1)
    );
\duty_cycle_next_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pwm_ready_r,
      CLR => pwm_out_r_i_1_n_0,
      D => data(2),
      Q => duty_cycle_next(2)
    );
\duty_cycle_next_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pwm_ready_r,
      CLR => pwm_out_r_i_1_n_0,
      D => data(3),
      Q => duty_cycle_next(3)
    );
\duty_cycle_next_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pwm_ready_r,
      CLR => pwm_out_r_i_1_n_0,
      D => data(4),
      Q => duty_cycle_next(4)
    );
\duty_cycle_next_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pwm_ready_r,
      CLR => pwm_out_r_i_1_n_0,
      D => data(5),
      Q => duty_cycle_next(5)
    );
\duty_cycle_next_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pwm_ready_r,
      CLR => pwm_out_r_i_1_n_0,
      D => data(6),
      Q => duty_cycle_next(6)
    );
\duty_cycle_next_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pwm_ready_r,
      CLR => pwm_out_r_i_1_n_0,
      D => data(7),
      Q => duty_cycle_next(7)
    );
pwm_out_r0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_in,
      CO(2) => pwm_out_r0_carry_n_1,
      CO(1) => pwm_out_r0_carry_n_2,
      CO(0) => pwm_out_r0_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_out_r0_carry_i_1_n_0,
      DI(2) => pwm_out_r0_carry_i_2_n_0,
      DI(1) => pwm_out_r0_carry_i_3_n_0,
      DI(0) => pwm_out_r0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_out_r0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_out_r0_carry_i_5_n_0,
      S(2) => pwm_out_r0_carry_i_6_n_0,
      S(1) => pwm_out_r0_carry_i_7_n_0,
      S(0) => pwm_out_r0_carry_i_8_n_0
    );
pwm_out_r0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => duty_cycle_latched(7),
      I1 => count(6),
      I2 => duty_cycle_latched(6),
      I3 => count(7),
      O => pwm_out_r0_carry_i_1_n_0
    );
pwm_out_r0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => count(5),
      I1 => count(4),
      I2 => duty_cycle_latched(4),
      I3 => duty_cycle_latched(5),
      O => pwm_out_r0_carry_i_2_n_0
    );
pwm_out_r0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => count(3),
      I1 => count(2),
      I2 => duty_cycle_latched(2),
      I3 => duty_cycle_latched(3),
      O => pwm_out_r0_carry_i_3_n_0
    );
pwm_out_r0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => duty_cycle_latched(0),
      I3 => duty_cycle_latched(1),
      O => pwm_out_r0_carry_i_4_n_0
    );
pwm_out_r0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => duty_cycle_latched(7),
      I1 => count(6),
      I2 => duty_cycle_latched(6),
      I3 => count(7),
      O => pwm_out_r0_carry_i_5_n_0
    );
pwm_out_r0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => count(5),
      I1 => duty_cycle_latched(4),
      I2 => count(4),
      I3 => duty_cycle_latched(5),
      O => pwm_out_r0_carry_i_6_n_0
    );
pwm_out_r0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => count(3),
      I1 => duty_cycle_latched(2),
      I2 => count(2),
      I3 => duty_cycle_latched(3),
      O => pwm_out_r0_carry_i_7_n_0
    );
pwm_out_r0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => count(1),
      I1 => duty_cycle_latched(0),
      I2 => count(0),
      I3 => duty_cycle_latched(1),
      O => pwm_out_r0_carry_i_8_n_0
    );
pwm_out_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => pwm_out_r_i_1_n_0
    );
pwm_out_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => p_0_in,
      Q => pwm_out
    );
pwm_ready_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => data_ready,
      O => pwm_ready_r
    );
pwm_ready_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \sample_timer_reg_n_0_[5]\,
      I1 => \sample_timer_reg_n_0_[4]\,
      I2 => \sample_timer_reg_n_0_[7]\,
      I3 => \sample_timer_reg_n_0_[6]\,
      O => pwm_ready_r_i_2_n_0
    );
pwm_ready_r_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \sample_timer_reg_n_0_[1]\,
      I1 => \sample_timer_reg_n_0_[0]\,
      I2 => \sample_timer_reg_n_0_[2]\,
      I3 => \sample_timer_reg_n_0_[3]\,
      O => pwm_ready_r_i_3_n_0
    );
pwm_ready_r_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \sample_timer_reg_n_0_[13]\,
      I1 => \sample_timer_reg_n_0_[12]\,
      I2 => \sample_timer_reg_n_0_[15]\,
      I3 => \sample_timer_reg_n_0_[14]\,
      O => pwm_ready_r_i_4_n_0
    );
pwm_ready_r_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \sample_timer_reg_n_0_[9]\,
      I1 => \sample_timer_reg_n_0_[8]\,
      I2 => \sample_timer_reg_n_0_[11]\,
      I3 => \sample_timer_reg_n_0_[10]\,
      O => pwm_ready_r_i_5_n_0
    );
pwm_ready_r_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => pwm_ready_r,
      Q => pwm_ready
    );
\sample_timer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample_timer_reg_n_0_[0]\,
      O => sample_timer(0)
    );
\sample_timer[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[12]_i_2_n_6\,
      O => sample_timer(10)
    );
\sample_timer[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[12]_i_2_n_5\,
      O => sample_timer(11)
    );
\sample_timer[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[12]_i_2_n_4\,
      O => sample_timer(12)
    );
\sample_timer[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[15]_i_2_n_7\,
      O => sample_timer(13)
    );
\sample_timer[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[15]_i_2_n_6\,
      O => sample_timer(14)
    );
\sample_timer[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[15]_i_2_n_5\,
      O => sample_timer(15)
    );
\sample_timer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[4]_i_2_n_7\,
      O => sample_timer(1)
    );
\sample_timer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[4]_i_2_n_6\,
      O => sample_timer(2)
    );
\sample_timer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[4]_i_2_n_5\,
      O => sample_timer(3)
    );
\sample_timer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[4]_i_2_n_4\,
      O => sample_timer(4)
    );
\sample_timer[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[8]_i_2_n_7\,
      O => sample_timer(5)
    );
\sample_timer[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[8]_i_2_n_6\,
      O => sample_timer(6)
    );
\sample_timer[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[8]_i_2_n_5\,
      O => sample_timer(7)
    );
\sample_timer[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[8]_i_2_n_4\,
      O => sample_timer(8)
    );
\sample_timer[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => pwm_ready_r_i_2_n_0,
      I1 => pwm_ready_r_i_3_n_0,
      I2 => pwm_ready_r_i_4_n_0,
      I3 => pwm_ready_r_i_5_n_0,
      I4 => \sample_timer_reg[12]_i_2_n_7\,
      O => sample_timer(9)
    );
\sample_timer_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(0),
      Q => \sample_timer_reg_n_0_[0]\
    );
\sample_timer_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(10),
      Q => \sample_timer_reg_n_0_[10]\
    );
\sample_timer_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(11),
      Q => \sample_timer_reg_n_0_[11]\
    );
\sample_timer_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(12),
      Q => \sample_timer_reg_n_0_[12]\
    );
\sample_timer_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_timer_reg[8]_i_2_n_0\,
      CO(3) => \sample_timer_reg[12]_i_2_n_0\,
      CO(2) => \sample_timer_reg[12]_i_2_n_1\,
      CO(1) => \sample_timer_reg[12]_i_2_n_2\,
      CO(0) => \sample_timer_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_timer_reg[12]_i_2_n_4\,
      O(2) => \sample_timer_reg[12]_i_2_n_5\,
      O(1) => \sample_timer_reg[12]_i_2_n_6\,
      O(0) => \sample_timer_reg[12]_i_2_n_7\,
      S(3) => \sample_timer_reg_n_0_[12]\,
      S(2) => \sample_timer_reg_n_0_[11]\,
      S(1) => \sample_timer_reg_n_0_[10]\,
      S(0) => \sample_timer_reg_n_0_[9]\
    );
\sample_timer_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(13),
      Q => \sample_timer_reg_n_0_[13]\
    );
\sample_timer_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(14),
      Q => \sample_timer_reg_n_0_[14]\
    );
\sample_timer_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(15),
      Q => \sample_timer_reg_n_0_[15]\
    );
\sample_timer_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_timer_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_sample_timer_reg[15]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sample_timer_reg[15]_i_2_n_2\,
      CO(0) => \sample_timer_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sample_timer_reg[15]_i_2_O_UNCONNECTED\(3),
      O(2) => \sample_timer_reg[15]_i_2_n_5\,
      O(1) => \sample_timer_reg[15]_i_2_n_6\,
      O(0) => \sample_timer_reg[15]_i_2_n_7\,
      S(3) => '0',
      S(2) => \sample_timer_reg_n_0_[15]\,
      S(1) => \sample_timer_reg_n_0_[14]\,
      S(0) => \sample_timer_reg_n_0_[13]\
    );
\sample_timer_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(1),
      Q => \sample_timer_reg_n_0_[1]\
    );
\sample_timer_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(2),
      Q => \sample_timer_reg_n_0_[2]\
    );
\sample_timer_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(3),
      Q => \sample_timer_reg_n_0_[3]\
    );
\sample_timer_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(4),
      Q => \sample_timer_reg_n_0_[4]\
    );
\sample_timer_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sample_timer_reg[4]_i_2_n_0\,
      CO(2) => \sample_timer_reg[4]_i_2_n_1\,
      CO(1) => \sample_timer_reg[4]_i_2_n_2\,
      CO(0) => \sample_timer_reg[4]_i_2_n_3\,
      CYINIT => \sample_timer_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \sample_timer_reg[4]_i_2_n_4\,
      O(2) => \sample_timer_reg[4]_i_2_n_5\,
      O(1) => \sample_timer_reg[4]_i_2_n_6\,
      O(0) => \sample_timer_reg[4]_i_2_n_7\,
      S(3) => \sample_timer_reg_n_0_[4]\,
      S(2) => \sample_timer_reg_n_0_[3]\,
      S(1) => \sample_timer_reg_n_0_[2]\,
      S(0) => \sample_timer_reg_n_0_[1]\
    );
\sample_timer_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(5),
      Q => \sample_timer_reg_n_0_[5]\
    );
\sample_timer_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(6),
      Q => \sample_timer_reg_n_0_[6]\
    );
\sample_timer_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(7),
      Q => \sample_timer_reg_n_0_[7]\
    );
\sample_timer_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(8),
      Q => \sample_timer_reg_n_0_[8]\
    );
\sample_timer_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_timer_reg[4]_i_2_n_0\,
      CO(3) => \sample_timer_reg[8]_i_2_n_0\,
      CO(2) => \sample_timer_reg[8]_i_2_n_1\,
      CO(1) => \sample_timer_reg[8]_i_2_n_2\,
      CO(0) => \sample_timer_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sample_timer_reg[8]_i_2_n_4\,
      O(2) => \sample_timer_reg[8]_i_2_n_5\,
      O(1) => \sample_timer_reg[8]_i_2_n_6\,
      O(0) => \sample_timer_reg[8]_i_2_n_7\,
      S(3) => \sample_timer_reg_n_0_[8]\,
      S(2) => \sample_timer_reg_n_0_[7]\,
      S(1) => \sample_timer_reg_n_0_[6]\,
      S(0) => \sample_timer_reg_n_0_[5]\
    );
\sample_timer_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_r_i_1_n_0,
      D => sample_timer(9),
      Q => \sample_timer_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_out : out STD_LOGIC;
    pwm_ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pwm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pwm_0_0 : entity is "design_1_pwm_0_0,pwm,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_pwm_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_pwm_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_pwm_0_0 : entity is "pwm,Vivado 2024.2";
end design_1_pwm_0_0;

architecture STRUCTURE of design_1_pwm_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_pwm_0_0_pwm
     port map (
      clk => clk,
      data(7 downto 0) => data(7 downto 0),
      data_ready => data_ready,
      pwm_out => pwm_out,
      pwm_ready => pwm_ready,
      rst => rst
    );
end STRUCTURE;
