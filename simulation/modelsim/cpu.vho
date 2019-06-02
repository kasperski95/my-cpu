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

-- DATE "06/02/2019 14:35:03"

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
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	alu_tb IS
    PORT (
	clk : IN std_logic;
	input_a : OUT IEEE.NUMERIC_STD.signed(15 DOWNTO 0);
	input_b : OUT IEEE.NUMERIC_STD.signed(15 DOWNTO 0);
	action_id : OUT STD.STANDARD.bit_vector(3 DOWNTO 0);
	enable_flags : OUT STD.STANDARD.bit;
	carry : OUT std_logic;
	zero : OUT std_logic;
	sign : OUT std_logic;
	output : OUT IEEE.NUMERIC_STD.signed(15 DOWNTO 0)
	);
END alu_tb;

-- Design Ports Information
-- input_a[0]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[1]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[6]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[8]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[9]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[10]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[12]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[13]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[14]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_a[15]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[3]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[4]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[6]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[8]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[9]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[10]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[11]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[12]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[14]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b[15]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_id[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_id[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_id[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_id[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_flags	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_action_id : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \action_id[3]~output_o\ : std_logic;
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
SIGNAL \tb_action_id_integer[0]~9_combout\ : std_logic;
SIGNAL \tb_action_id[0]~feeder_combout\ : std_logic;
SIGNAL \tb_action_id_integer[1]~3_combout\ : std_logic;
SIGNAL \tb_action_id[1]~feeder_combout\ : std_logic;
SIGNAL \tb_action_id_integer[1]~4\ : std_logic;
SIGNAL \tb_action_id_integer[2]~5_combout\ : std_logic;
SIGNAL \tb_action_id[2]~feeder_combout\ : std_logic;
SIGNAL \tb_action_id_integer[2]~6\ : std_logic;
SIGNAL \tb_action_id_integer[3]~7_combout\ : std_logic;
SIGNAL \tb_action_id[3]~feeder_combout\ : std_logic;
SIGNAL \alu_inst|Mux15~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux15~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux14~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux13~0_combout\ : std_logic;
SIGNAL tb_action_id_integer : std_logic_vector(31 DOWNTO 0);
SIGNAL tb_action_id : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_inst|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux15~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
input_a <= IEEE.NUMERIC_STD.SIGNED(ww_input_a);
input_b <= IEEE.NUMERIC_STD.SIGNED(ww_input_b);
action_id <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_action_id);
enable_flags <= IEEE.STD_LOGIC_1164.TO_BIT(ww_enable_flags);
carry <= ww_carry;
zero <= ww_zero;
sign <= ww_sign;
output <= IEEE.NUMERIC_STD.SIGNED(ww_output);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\alu_inst|ALT_INV_Mux14~0_combout\ <= NOT \alu_inst|Mux14~0_combout\;
\alu_inst|ALT_INV_Mux15~1_combout\ <= NOT \alu_inst|Mux15~1_combout\;
\alu_inst|ALT_INV_Mux15~0_combout\ <= NOT \alu_inst|Mux15~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X90_Y91_N9
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

-- Location: IOOBUF_X115_Y91_N16
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X75_Y0_N9
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

-- Location: IOOBUF_X26_Y91_N16
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

-- Location: IOOBUF_X15_Y91_N16
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

-- Location: IOOBUF_X117_Y26_N2
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

-- Location: IOOBUF_X28_Y91_N16
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X113_Y0_N23
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

-- Location: IOOBUF_X79_Y91_N16
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

-- Location: IOOBUF_X41_Y91_N9
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

-- Location: IOOBUF_X5_Y91_N16
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

-- Location: IOOBUF_X79_Y91_N23
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

-- Location: IOOBUF_X117_Y50_N9
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

-- Location: IOOBUF_X34_Y91_N16
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

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X39_Y0_N9
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

-- Location: IOOBUF_X21_Y91_N9
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

-- Location: IOOBUF_X17_Y0_N16
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

-- Location: IOOBUF_X117_Y84_N9
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

-- Location: IOOBUF_X63_Y91_N9
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

-- Location: IOOBUF_X99_Y91_N9
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

-- Location: IOOBUF_X61_Y91_N9
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

-- Location: IOOBUF_X115_Y91_N2
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X53_Y91_N16
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

-- Location: IOOBUF_X61_Y91_N16
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

-- Location: IOOBUF_X61_Y91_N2
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

-- Location: IOOBUF_X32_Y91_N23
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

-- Location: IOOBUF_X28_Y91_N23
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

-- Location: IOOBUF_X30_Y91_N2
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

-- Location: IOOBUF_X28_Y91_N9
\action_id[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tb_action_id(3),
	devoe => ww_devoe,
	o => \action_id[3]~output_o\);

-- Location: IOOBUF_X88_Y91_N2
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

-- Location: IOOBUF_X115_Y91_N9
\carry~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carry~output_o\);

-- Location: IOOBUF_X34_Y91_N9
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

-- Location: IOOBUF_X48_Y91_N16
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

-- Location: IOOBUF_X32_Y91_N16
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|ALT_INV_Mux15~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X30_Y91_N23
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|ALT_INV_Mux15~1_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X30_Y91_N16
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X30_Y91_N9
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_inst|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X95_Y91_N16
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X10_Y91_N9
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

-- Location: IOOBUF_X97_Y0_N2
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

-- Location: IOOBUF_X117_Y84_N2
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

-- Location: IOOBUF_X53_Y91_N9
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

-- Location: IOOBUF_X111_Y91_N23
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

-- Location: IOOBUF_X117_Y83_N9
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

-- Location: IOOBUF_X117_Y6_N2
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

-- Location: IOOBUF_X48_Y0_N23
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

-- Location: IOOBUF_X115_Y91_N23
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

-- Location: LCCOMB_X31_Y90_N6
\tb_action_id_integer[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id_integer[0]~9_combout\ = !tb_action_id_integer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tb_action_id_integer(0),
	combout => \tb_action_id_integer[0]~9_combout\);

-- Location: FF_X31_Y90_N7
\tb_action_id_integer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id_integer[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id_integer(0));

-- Location: LCCOMB_X31_Y90_N24
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

-- Location: FF_X31_Y90_N25
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

-- Location: LCCOMB_X31_Y90_N8
\tb_action_id_integer[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id_integer[1]~3_combout\ = (tb_action_id_integer(0) & (tb_action_id_integer(1) $ (VCC))) # (!tb_action_id_integer(0) & (tb_action_id_integer(1) & VCC))
-- \tb_action_id_integer[1]~4\ = CARRY((tb_action_id_integer(0) & tb_action_id_integer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id_integer(0),
	datab => tb_action_id_integer(1),
	datad => VCC,
	combout => \tb_action_id_integer[1]~3_combout\,
	cout => \tb_action_id_integer[1]~4\);

-- Location: FF_X31_Y90_N9
\tb_action_id_integer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id_integer[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id_integer(1));

-- Location: LCCOMB_X31_Y90_N18
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

-- Location: FF_X31_Y90_N19
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

-- Location: LCCOMB_X31_Y90_N10
\tb_action_id_integer[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id_integer[2]~5_combout\ = (tb_action_id_integer(2) & (!\tb_action_id_integer[1]~4\)) # (!tb_action_id_integer(2) & ((\tb_action_id_integer[1]~4\) # (GND)))
-- \tb_action_id_integer[2]~6\ = CARRY((!\tb_action_id_integer[1]~4\) # (!tb_action_id_integer(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id_integer(2),
	datad => VCC,
	cin => \tb_action_id_integer[1]~4\,
	combout => \tb_action_id_integer[2]~5_combout\,
	cout => \tb_action_id_integer[2]~6\);

-- Location: FF_X31_Y90_N11
\tb_action_id_integer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id_integer[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id_integer(2));

-- Location: LCCOMB_X31_Y90_N16
\tb_action_id[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id[2]~feeder_combout\ = tb_action_id_integer(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tb_action_id_integer(2),
	combout => \tb_action_id[2]~feeder_combout\);

-- Location: FF_X31_Y90_N17
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

-- Location: LCCOMB_X31_Y90_N12
\tb_action_id_integer[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id_integer[3]~7_combout\ = \tb_action_id_integer[2]~6\ $ (!tb_action_id_integer(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tb_action_id_integer(3),
	cin => \tb_action_id_integer[2]~6\,
	combout => \tb_action_id_integer[3]~7_combout\);

-- Location: FF_X31_Y90_N13
\tb_action_id_integer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id_integer[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id_integer(3));

-- Location: LCCOMB_X31_Y90_N22
\tb_action_id[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tb_action_id[3]~feeder_combout\ = tb_action_id_integer(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tb_action_id_integer(3),
	combout => \tb_action_id[3]~feeder_combout\);

-- Location: FF_X31_Y90_N23
\tb_action_id[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tb_action_id[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tb_action_id(3));

-- Location: LCCOMB_X31_Y90_N26
\alu_inst|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_inst|Mux15~0_combout\ = (tb_action_id(1) & (!tb_action_id(3) & !tb_action_id(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id(1),
	datac => tb_action_id(3),
	datad => tb_action_id(2),
	combout => \alu_inst|Mux15~0_combout\);

-- Location: LCCOMB_X31_Y90_N28
\alu_inst|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_inst|Mux15~1_combout\ = (tb_action_id(1) & (tb_action_id(0) & (!tb_action_id(3) & !tb_action_id(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id(1),
	datab => tb_action_id(0),
	datac => tb_action_id(3),
	datad => tb_action_id(2),
	combout => \alu_inst|Mux15~1_combout\);

-- Location: LCCOMB_X31_Y90_N30
\alu_inst|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_inst|Mux14~0_combout\ = (tb_action_id(3) & (tb_action_id(1) & (tb_action_id(0) & tb_action_id(2)))) # (!tb_action_id(3) & (!tb_action_id(2) & (tb_action_id(1) $ (tb_action_id(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id(1),
	datab => tb_action_id(0),
	datac => tb_action_id(3),
	datad => tb_action_id(2),
	combout => \alu_inst|Mux14~0_combout\);

-- Location: LCCOMB_X31_Y90_N20
\alu_inst|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_inst|Mux13~0_combout\ = (tb_action_id(1) & (!tb_action_id(0) & (!tb_action_id(3) & !tb_action_id(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tb_action_id(1),
	datab => tb_action_id(0),
	datac => tb_action_id(3),
	datad => tb_action_id(2),
	combout => \alu_inst|Mux13~0_combout\);

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

ww_action_id(3) <= \action_id[3]~output_o\;

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


