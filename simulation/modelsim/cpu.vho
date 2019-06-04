-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/03/2019 18:12:46"

-- 
-- Device: Altera EP4CGX150DF31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu_tb IS
    PORT (
	clk : IN std_logic;
	input_a : BUFFER std_logic_vector(15 DOWNTO 0);
	input_b : BUFFER std_logic_vector(15 DOWNTO 0);
	action_id : BUFFER std_logic_vector(2 DOWNTO 0);
	enable_flags : BUFFER std_logic;
	carry : BUFFER std_logic;
	zero : BUFFER std_logic;
	sign : BUFFER std_logic;
	output : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END alu_tb;

-- Design Ports Information
-- input_a[0]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[2]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[3]	=>  Location: PIN_AG29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[4]	=>  Location: PIN_C28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[7]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[8]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[9]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[10]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[11]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[14]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[15]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[4]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[5]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[6]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[8]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[9]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[10]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[11]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[12]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[13]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[14]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[15]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_id[0]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_id[1]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_id[2]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_flags	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_AJ3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_tb IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_input_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_input_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_action_id : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_enable_flags : std_logic;
SIGNAL ww_carry : std_logic;
SIGNAL ww_zero : std_logic;
SIGNAL ww_sign : std_logic;
SIGNAL ww_output : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_a[0]~output_o\ : std_logic;
SIGNAL \input_a[1]~output_o\ : std_logic;
SIGNAL \input_a[2]~output_o\ : std_logic;
SIGNAL \input_a[3]~output_o\ : std_logic;
SIGNAL \input_a[4]~output_o\ : std_logic;
SIGNAL \input_a[5]~output_o\ : std_logic;
SIGNAL \input_a[6]~output_o\ : std_logic;
SIGNAL \input_a[7]~output_o\ : std_logic;
SIGNAL \input_a[8]~output_o\ : std_logic;
SIGNAL \input_a[9]~output_o\ : std_logic;
SIGNAL \input_a[10]~output_o\ : std_logic;
SIGNAL \input_a[11]~output_o\ : std_logic;
SIGNAL \input_a[12]~output_o\ : std_logic;
SIGNAL \input_a[13]~output_o\ : std_logic;
SIGNAL \input_a[14]~output_o\ : std_logic;
SIGNAL \input_a[15]~output_o\ : std_logic;
SIGNAL \input_b[0]~output_o\ : std_logic;
SIGNAL \input_b[1]~output_o\ : std_logic;
SIGNAL \input_b[2]~output_o\ : std_logic;
SIGNAL \input_b[3]~output_o\ : std_logic;
SIGNAL \input_b[4]~output_o\ : std_logic;
SIGNAL \input_b[5]~output_o\ : std_logic;
SIGNAL \input_b[6]~output_o\ : std_logic;
SIGNAL \input_b[7]~output_o\ : std_logic;
SIGNAL \input_b[8]~output_o\ : std_logic;
SIGNAL \input_b[9]~output_o\ : std_logic;
SIGNAL \input_b[10]~output_o\ : std_logic;
SIGNAL \input_b[11]~output_o\ : std_logic;
SIGNAL \input_b[12]~output_o\ : std_logic;
SIGNAL \input_b[13]~output_o\ : std_logic;
SIGNAL \input_b[14]~output_o\ : std_logic;
SIGNAL \input_b[15]~output_o\ : std_logic;
SIGNAL \action_id[0]~output_o\ : std_logic;
SIGNAL \action_id[1]~output_o\ : std_logic;
SIGNAL \action_id[2]~output_o\ : std_logic;
SIGNAL \enable_flags~output_o\ : std_logic;
SIGNAL \carry~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \sign~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \output[14]~output_o\ : std_logic;
SIGNAL \output[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tb_action_id_integer[0]~6_combout\ : std_logic;
SIGNAL \tb_action_id[0]~feeder_combout\ : std_logic;
SIGNAL \tb_action_id_integer[1]~2_combout\ : std_logic;
SIGNAL \tb_action_id[1]~feeder_combout\ : std_logic;
SIGNAL \tb_action_id_integer[1]~3\ : std_logic;
SIGNAL \tb_action_id_integer[2]~4_combout\ : std_logic;
SIGNAL \tb_action_id[2]~feeder_combout\ : std_logic;
SIGNAL \alu_inst|Mux15~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux14~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux13~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux12~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux11~0_combout\ : std_logic;
SIGNAL tb_action_id_integer : std_logic_vector(31 DOWNTO 0);
SIGNAL tb_action_id : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
input_a <= ww_input_a;
input_b <= ww_input_b;
action_id <= ww_action_id;
enable_flags <= ww_enable_flags;
carry <= ww_carry;
zero <= ww_zero;
sign <= ww_sign;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X8_Y91_N9
\input_a[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \input_a[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\input_a[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \input_a[1]~output_o\);

-- Location: IOOBUF_X95_Y0_N16
\input_a[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \input_a[2]~output_o\);

-- Location: IOOBUF_X117_Y11_N2
\input_a[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[3]~output_o\);

-- Location: IOOBUF_X113_Y91_N16
\input_a[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[4]~output_o\);

-- Location: IOOBUF_X19_Y91_N23
\input_a[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[5]~output_o\);

-- Location: IOOBUF_X15_Y91_N2
\input_a[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[6]~output_o\);

-- Location: IOOBUF_X117_Y5_N9
\input_a[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[7]~output_o\);

-- Location: IOOBUF_X117_Y67_N9
\input_a[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[8]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\input_a[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[9]~output_o\);

-- Location: IOOBUF_X117_Y39_N2
\input_a[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[10]~output_o\);

-- Location: IOOBUF_X115_Y91_N2
\input_a[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[11]~output_o\);

-- Location: IOOBUF_X32_Y91_N2
\input_a[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[12]~output_o\);

-- Location: IOOBUF_X75_Y0_N23
\input_a[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[13]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\input_a[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[14]~output_o\);

-- Location: IOOBUF_X82_Y0_N23
\input_a[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_a[15]~output_o\);

-- Location: IOOBUF_X8_Y91_N16
\input_b[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \input_b[0]~output_o\);

-- Location: IOOBUF_X53_Y91_N23
\input_b[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \input_b[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\input_b[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[2]~output_o\);

-- Location: IOOBUF_X34_Y91_N2
\input_b[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[3]~output_o\);

-- Location: IOOBUF_X61_Y91_N2
\input_b[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[4]~output_o\);

-- Location: IOOBUF_X111_Y91_N2
\input_b[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[5]~output_o\);

-- Location: IOOBUF_X34_Y91_N23
\input_b[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[6]~output_o\);

-- Location: IOOBUF_X21_Y91_N9
\input_b[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[7]~output_o\);

-- Location: IOOBUF_X86_Y0_N2
\input_b[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[8]~output_o\);

-- Location: IOOBUF_X66_Y91_N23
\input_b[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[9]~output_o\);

-- Location: IOOBUF_X117_Y39_N9
\input_b[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[10]~output_o\);

-- Location: IOOBUF_X5_Y91_N16
\input_b[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[11]~output_o\);

-- Location: IOOBUF_X117_Y49_N2
\input_b[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[12]~output_o\);

-- Location: IOOBUF_X30_Y91_N2
\input_b[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[13]~output_o\);

-- Location: IOOBUF_X79_Y91_N23
\input_b[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[14]~output_o\);

-- Location: IOOBUF_X117_Y60_N2
\input_b[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \input_b[15]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\action_id[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tb_action_id(0),
	devoe => ww_devoe,
	o => \action_id[0]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\action_id[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tb_action_id(1),
	devoe => ww_devoe,
	o => \action_id[1]~output_o\);

-- Location: IOOBUF_X63_Y0_N23
\action_id[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tb_action_id(2),
	devoe => ww_devoe,
	o => \action_id[2]~output_o\);

-- Location: IOOBUF_X30_Y91_N23
\enable_flags~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enable_flags~output_o\);

-- Location: IOOBUF_X117_Y33_N2
\carry~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \carry~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\zero~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOOBUF_X26_Y91_N16
\sign~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sign~output_o\);

-- Location: IOOBUF_X66_Y0_N16
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X63_Y0_N16
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X61_Y0_N16
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X61_Y0_N23
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X48_Y91_N9
\output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X117_Y79_N9
\output[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\output[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X5_Y91_N23
\output[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X117_Y13_N9
\output[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X61_Y91_N16
\output[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X77_Y0_N16
\output[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X82_Y0_N9
\output[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X19_Y91_N9
\output[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOIBUF_X57_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G29
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X63_Y1_N12
\tb_action_id_integer[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id_integer[0]~6_combout\ = !tb_action_id_integer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tb_action_id_integer(0),
	combout => \tb_action_id_integer[0]~6_combout\);

-- Location: FF_X63_Y1_N13
\tb_action_id_integer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id_integer[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id_integer(0));

-- Location: LCCOMB_X63_Y1_N24
\tb_action_id[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id[0]~feeder_combout\ = tb_action_id_integer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tb_action_id_integer(0),
	combout => \tb_action_id[0]~feeder_combout\);

-- Location: FF_X63_Y1_N25
\tb_action_id[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id(0));

-- Location: LCCOMB_X63_Y1_N8
\tb_action_id_integer[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id_integer[1]~2_combout\ = (tb_action_id_integer(0) & (tb_action_id_integer(1) $ (VCC))) # (!tb_action_id_integer(0) & (tb_action_id_integer(1) & VCC))
-- \tb_action_id_integer[1]~3\ = CARRY((tb_action_id_integer(0) & tb_action_id_integer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id_integer(0),
	datab => tb_action_id_integer(1),
	datad => VCC,
	combout => \tb_action_id_integer[1]~2_combout\,
	cout => \tb_action_id_integer[1]~3\);

-- Location: FF_X63_Y1_N9
\tb_action_id_integer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id_integer[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id_integer(1));

-- Location: LCCOMB_X63_Y1_N6
\tb_action_id[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id[1]~feeder_combout\ = tb_action_id_integer(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tb_action_id_integer(1),
	combout => \tb_action_id[1]~feeder_combout\);

-- Location: FF_X63_Y1_N7
\tb_action_id[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id(1));

-- Location: LCCOMB_X63_Y1_N10
\tb_action_id_integer[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id_integer[2]~4_combout\ = \tb_action_id_integer[1]~3\ $ (tb_action_id_integer(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tb_action_id_integer(2),
	cin => \tb_action_id_integer[1]~3\,
	combout => \tb_action_id_integer[2]~4_combout\);

-- Location: FF_X63_Y1_N11
\tb_action_id_integer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id_integer[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id_integer(2));

-- Location: LCCOMB_X63_Y1_N20
\tb_action_id[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id[2]~feeder_combout\ = tb_action_id_integer(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tb_action_id_integer(2),
	combout => \tb_action_id[2]~feeder_combout\);

-- Location: FF_X63_Y1_N21
\tb_action_id[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id(2));

-- Location: LCCOMB_X63_Y1_N26
\alu_inst|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_inst|Mux15~0_combout\ = (!tb_action_id(1) & (!tb_action_id(2) & tb_action_id(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id(1),
	datab => tb_action_id(2),
	datad => tb_action_id(0),
	combout => \alu_inst|Mux15~0_combout\);

-- Location: LCCOMB_X63_Y1_N28
\alu_inst|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_inst|Mux14~0_combout\ = (!tb_action_id(2) & (tb_action_id(1) $ (tb_action_id(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id(1),
	datab => tb_action_id(2),
	datad => tb_action_id(0),
	combout => \alu_inst|Mux14~0_combout\);

-- Location: LCCOMB_X63_Y1_N14
\alu_inst|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_inst|Mux13~0_combout\ = (tb_action_id(1) & (!tb_action_id(2) & tb_action_id(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id(1),
	datab => tb_action_id(2),
	datad => tb_action_id(0),
	combout => \alu_inst|Mux13~0_combout\);

-- Location: LCCOMB_X63_Y1_N16
\alu_inst|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_inst|Mux12~0_combout\ = (tb_action_id(1) & (!tb_action_id(2) & !tb_action_id(0))) # (!tb_action_id(1) & (tb_action_id(2) & tb_action_id(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id(1),
	datab => tb_action_id(2),
	datad => tb_action_id(0),
	combout => \alu_inst|Mux12~0_combout\);

-- Location: LCCOMB_X63_Y1_N22
\alu_inst|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_inst|Mux11~0_combout\ = (!tb_action_id(1) & (tb_action_id(2) & tb_action_id(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id(1),
	datab => tb_action_id(2),
	datad => tb_action_id(0),
	combout => \alu_inst|Mux11~0_combout\);

ww_input_a(0) <= \input_a[0]~output_o\;

ww_input_a(1) <= \input_a[1]~output_o\;

ww_input_a(2) <= \input_a[2]~output_o\;

ww_input_a(3) <= \input_a[3]~output_o\;

ww_input_a(4) <= \input_a[4]~output_o\;

ww_input_a(5) <= \input_a[5]~output_o\;

ww_input_a(6) <= \input_a[6]~output_o\;

ww_input_a(7) <= \input_a[7]~output_o\;

ww_input_a(8) <= \input_a[8]~output_o\;

ww_input_a(9) <= \input_a[9]~output_o\;

ww_input_a(10) <= \input_a[10]~output_o\;

ww_input_a(11) <= \input_a[11]~output_o\;

ww_input_a(12) <= \input_a[12]~output_o\;

ww_input_a(13) <= \input_a[13]~output_o\;

ww_input_a(14) <= \input_a[14]~output_o\;

ww_input_a(15) <= \input_a[15]~output_o\;

ww_input_b(0) <= \input_b[0]~output_o\;

ww_input_b(1) <= \input_b[1]~output_o\;

ww_input_b(2) <= \input_b[2]~output_o\;

ww_input_b(3) <= \input_b[3]~output_o\;

ww_input_b(4) <= \input_b[4]~output_o\;

ww_input_b(5) <= \input_b[5]~output_o\;

ww_input_b(6) <= \input_b[6]~output_o\;

ww_input_b(7) <= \input_b[7]~output_o\;

ww_input_b(8) <= \input_b[8]~output_o\;

ww_input_b(9) <= \input_b[9]~output_o\;

ww_input_b(10) <= \input_b[10]~output_o\;

ww_input_b(11) <= \input_b[11]~output_o\;

ww_input_b(12) <= \input_b[12]~output_o\;

ww_input_b(13) <= \input_b[13]~output_o\;

ww_input_b(14) <= \input_b[14]~output_o\;

ww_input_b(15) <= \input_b[15]~output_o\;

ww_action_id(0) <= \action_id[0]~output_o\;

ww_action_id(1) <= \action_id[1]~output_o\;

ww_action_id(2) <= \action_id[2]~output_o\;

ww_enable_flags <= \enable_flags~output_o\;

ww_carry <= \carry~output_o\;

ww_zero <= \zero~output_o\;

ww_sign <= \sign~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;

ww_output(14) <= \output[14]~output_o\;

ww_output(15) <= \output[15]~output_o\;
END structure;


