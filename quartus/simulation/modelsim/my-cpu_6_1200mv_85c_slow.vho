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

-- DATE "06/05/2019 18:50:00"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
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
-- ~ALTERA_NCEO~	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
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

ENTITY 	\my-cpu\ IS
    PORT (
	DATA_BUS_IN : INOUT std_logic_vector(15 DOWNTO 0);
	WR : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	DATA_BUS_OUT : INOUT std_logic_vector(15 DOWNTO 0);
	RD : OUT std_logic;
	ADDRESS_BUS : OUT std_logic_vector(15 DOWNTO 0);
	DEBUG_ALU_ACTION_ID : OUT std_logic_vector(2 DOWNTO 0);
	DEBUG_CU_INSTRUCTION : OUT std_logic_vector(15 DOWNTO 0)
	);
END \my-cpu\;

-- Design Ports Information
-- WR	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[15]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[14]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[13]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[11]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[10]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[7]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_BUS[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_ALU_ACTION_ID[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_ALU_ACTION_ID[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_ALU_ACTION_ID[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[15]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[13]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[12]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[11]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[10]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[9]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[7]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUG_CU_INSTRUCTION[0]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[15]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[13]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[12]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[10]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[9]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[8]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[3]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[15]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[14]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[13]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[12]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[11]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[8]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[7]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \my-cpu\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_RD : std_logic;
SIGNAL ww_ADDRESS_BUS : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DEBUG_ALU_ACTION_ID : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DEBUG_CU_INSTRUCTION : std_logic_vector(15 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Mux228~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Mux10~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Mux245~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_BUS_OUT[15]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[14]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[13]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[12]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[11]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[10]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[9]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[8]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[7]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[6]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[5]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[4]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[3]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[2]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[1]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[0]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[15]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[14]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[13]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[12]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[11]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[10]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[9]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[8]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[7]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[6]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[5]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[4]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[3]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[2]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[1]~input_o\ : std_logic;
SIGNAL \DATA_BUS_IN[0]~input_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[15]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[14]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[13]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[12]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[11]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[10]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[9]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[8]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[7]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[15]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[14]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[13]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[12]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[11]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[10]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[9]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[8]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[7]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN[0]~output_o\ : std_logic;
SIGNAL \WR~output_o\ : std_logic;
SIGNAL \RD~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[15]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[14]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[13]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[12]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[11]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[10]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[9]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[8]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[7]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[6]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[5]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[4]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[3]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[2]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[1]~output_o\ : std_logic;
SIGNAL \ADDRESS_BUS[0]~output_o\ : std_logic;
SIGNAL \DEBUG_ALU_ACTION_ID[2]~output_o\ : std_logic;
SIGNAL \DEBUG_ALU_ACTION_ID[1]~output_o\ : std_logic;
SIGNAL \DEBUG_ALU_ACTION_ID[0]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[15]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[14]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[13]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[12]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[11]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[10]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[9]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[8]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[7]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[6]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[5]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[4]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[3]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[2]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[1]~output_o\ : std_logic;
SIGNAL \DEBUG_CU_INSTRUCTION[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst1|state.handle_arg_as_register~0_combout\ : std_logic;
SIGNAL \inst1|action~4_combout\ : std_logic;
SIGNAL \inst3|Mux226~5_combout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|state.save_to_register~q\ : std_logic;
SIGNAL \inst3|Mux83~57_combout\ : std_logic;
SIGNAL \inst3|Mux83~114_combout\ : std_logic;
SIGNAL \inst3|Mux219~3_combout\ : std_logic;
SIGNAL \inst3|Mux219~2_combout\ : std_logic;
SIGNAL \inst3|program_counter[0]~16_combout\ : std_logic;
SIGNAL \inst3|Mux83~21_combout\ : std_logic;
SIGNAL \inst3|Mux83~111_combout\ : std_logic;
SIGNAL \inst3|program_counter[3]~42_combout\ : std_logic;
SIGNAL \inst3|program_counter[0]~17\ : std_logic;
SIGNAL \inst3|program_counter[1]~18_combout\ : std_logic;
SIGNAL \inst3|program_counter[1]~19\ : std_logic;
SIGNAL \inst3|program_counter[2]~20_combout\ : std_logic;
SIGNAL \inst3|program_counter[2]~21\ : std_logic;
SIGNAL \inst3|program_counter[3]~22_combout\ : std_logic;
SIGNAL \inst3|program_counter[3]~23\ : std_logic;
SIGNAL \inst3|program_counter[4]~24_combout\ : std_logic;
SIGNAL \inst3|Mux232~0_combout\ : std_logic;
SIGNAL \inst3|Mux230~0_combout\ : std_logic;
SIGNAL \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ : std_logic;
SIGNAL \inst3|Mux230~1_combout\ : std_logic;
SIGNAL \inst3|Mux83~116_combout\ : std_logic;
SIGNAL \inst3|Mux239~0_combout\ : std_logic;
SIGNAL \inst3|segment_offset_l_register[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux83~3_combout\ : std_logic;
SIGNAL \inst3|Mux83~118_combout\ : std_logic;
SIGNAL \inst3|Mux83~112_combout\ : std_logic;
SIGNAL \inst3|Mux83~109_combout\ : std_logic;
SIGNAL \inst3|Mux232~3_combout\ : std_logic;
SIGNAL \inst3|Mux232~4_combout\ : std_logic;
SIGNAL \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ : std_logic;
SIGNAL \inst3|generic_register_a[3]~0_combout\ : std_logic;
SIGNAL \inst3|Mux83~115_combout\ : std_logic;
SIGNAL \inst3|Mux232~1_combout\ : std_logic;
SIGNAL \inst3|Mux232~2_combout\ : std_logic;
SIGNAL \inst3|Mux232~5_combout\ : std_logic;
SIGNAL \inst3|Mux232~6_combout\ : std_logic;
SIGNAL \inst3|Mux230~3_combout\ : std_logic;
SIGNAL \inst3|Mux232~7_combout\ : std_logic;
SIGNAL \inst3|Mux235~1_combout\ : std_logic;
SIGNAL \inst3|Mux245~0_combout\ : std_logic;
SIGNAL \inst3|Mux245~0clkctrl_outclk\ : std_logic;
SIGNAL \inst3|Mux235~2_combout\ : std_logic;
SIGNAL \inst3|Mux235~0_combout\ : std_logic;
SIGNAL \inst3|segment_register[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux235~3_combout\ : std_logic;
SIGNAL \inst3|Mux234~2_combout\ : std_logic;
SIGNAL \inst3|Mux235~4_combout\ : std_logic;
SIGNAL \inst3|Mux234~3_combout\ : std_logic;
SIGNAL \inst3|Mux234~4_combout\ : std_logic;
SIGNAL \inst3|Mux234~0_combout\ : std_logic;
SIGNAL \inst3|Mux234~1_combout\ : std_logic;
SIGNAL \inst3|Mux237~2_combout\ : std_logic;
SIGNAL \inst3|Mux234~5_combout\ : std_logic;
SIGNAL \inst3|Mux234~6_combout\ : std_logic;
SIGNAL \inst3|Mux234~7_combout\ : std_logic;
SIGNAL \inst3|segment_offset_l_register[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux236~0_combout\ : std_logic;
SIGNAL \inst3|Mux236~1_combout\ : std_logic;
SIGNAL \inst3|Mux236~2_combout\ : std_logic;
SIGNAL \inst3|Mux236~3_combout\ : std_logic;
SIGNAL \inst3|Mux236~4_combout\ : std_logic;
SIGNAL \inst3|Mux236~5_combout\ : std_logic;
SIGNAL \inst3|Mux236~6_combout\ : std_logic;
SIGNAL \inst3|Mux236~7_combout\ : std_logic;
SIGNAL \inst3|Mux241~2_combout\ : std_logic;
SIGNAL \inst3|Mux241~3_combout\ : std_logic;
SIGNAL \inst3|Mux241~6_combout\ : std_logic;
SIGNAL \inst3|Mux241~5_combout\ : std_logic;
SIGNAL \inst3|Mux237~3_combout\ : std_logic;
SIGNAL \inst3|Mux237~4_combout\ : std_logic;
SIGNAL \inst3|Mux237~5_combout\ : std_logic;
SIGNAL \inst3|program_counter[7]~31\ : std_logic;
SIGNAL \inst3|program_counter[8]~32_combout\ : std_logic;
SIGNAL \inst3|Mux237~0_combout\ : std_logic;
SIGNAL \inst3|Mux83~110_combout\ : std_logic;
SIGNAL \inst3|Mux237~1_combout\ : std_logic;
SIGNAL \inst3|Mux237~6_combout\ : std_logic;
SIGNAL \inst3|Mux237~7_combout\ : std_logic;
SIGNAL \inst3|stack_pointer[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|program_counter[8]~33\ : std_logic;
SIGNAL \inst3|program_counter[9]~34_combout\ : std_logic;
SIGNAL \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ : std_logic;
SIGNAL \inst3|Mux226~6_combout\ : std_logic;
SIGNAL \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ : std_logic;
SIGNAL \inst3|Mux228~0_combout\ : std_logic;
SIGNAL \inst3|Mux228~0clkctrl_outclk\ : std_logic;
SIGNAL \inst3|Mux214~2_combout\ : std_logic;
SIGNAL \inst3|Mux215~0_combout\ : std_logic;
SIGNAL \inst3|Mux226~7_combout\ : std_logic;
SIGNAL \inst3|Mux214~0_combout\ : std_logic;
SIGNAL \inst3|Mux214~1_combout\ : std_logic;
SIGNAL \inst3|Mux215~3_combout\ : std_logic;
SIGNAL \inst3|Mux215~4_combout\ : std_logic;
SIGNAL \inst3|Mux215~1_combout\ : std_logic;
SIGNAL \inst3|Mux215~2_combout\ : std_logic;
SIGNAL \inst3|Mux215~5_combout\ : std_logic;
SIGNAL \inst3|Mux215~6_combout\ : std_logic;
SIGNAL \inst3|Mux215~7_combout\ : std_logic;
SIGNAL \inst3|instruction_register[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux83~108_combout\ : std_logic;
SIGNAL \inst3|Mux216~0_combout\ : std_logic;
SIGNAL \inst3|Mux216~1_combout\ : std_logic;
SIGNAL \inst3|Mux219~1_combout\ : std_logic;
SIGNAL \inst3|Mux216~2_combout\ : std_logic;
SIGNAL \inst3|Mux216~3_combout\ : std_logic;
SIGNAL \inst3|Mux226~2_combout\ : std_logic;
SIGNAL \inst3|Mux216~4_combout\ : std_logic;
SIGNAL \inst3|Mux216~5_combout\ : std_logic;
SIGNAL \inst3|Mux216~6_combout\ : std_logic;
SIGNAL \inst3|Mux216~7_combout\ : std_logic;
SIGNAL \inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst3|Mux243~2_combout\ : std_logic;
SIGNAL \inst3|Mux243~3_combout\ : std_logic;
SIGNAL \inst3|generic_register_a[14]~feeder_combout\ : std_logic;
SIGNAL \inst3|generic_register_b[14]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux243~4_combout\ : std_logic;
SIGNAL \inst3|program_counter[11]~39\ : std_logic;
SIGNAL \inst3|program_counter[12]~40_combout\ : std_logic;
SIGNAL \inst3|generic_register_b[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux226~4_combout\ : std_logic;
SIGNAL \inst3|Mux224~2_combout\ : std_logic;
SIGNAL \inst3|Mux226~3_combout\ : std_logic;
SIGNAL \inst3|Mux224~3_combout\ : std_logic;
SIGNAL \inst3|generic_register_a[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux224~4_combout\ : std_logic;
SIGNAL \inst3|Mux224~5_combout\ : std_logic;
SIGNAL \inst3|Mux224~0_combout\ : std_logic;
SIGNAL \inst3|stack_pointer[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux224~1_combout\ : std_logic;
SIGNAL \inst3|Mux224~6_combout\ : std_logic;
SIGNAL \inst3|Mux224~7_combout\ : std_logic;
SIGNAL \inst3|Mux235~5_combout\ : std_logic;
SIGNAL \inst3|segment_offset_l_register[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux235~6_combout\ : std_logic;
SIGNAL \inst3|Mux235~7_combout\ : std_logic;
SIGNAL \inst3|Mux235~8_combout\ : std_logic;
SIGNAL \inst3|Mux235~9_combout\ : std_logic;
SIGNAL \inst3|Mux235~10_combout\ : std_logic;
SIGNAL \inst3|Mux235~11_combout\ : std_logic;
SIGNAL \inst3|Mux235~12_combout\ : std_logic;
SIGNAL \inst3|Mux238~2_combout\ : std_logic;
SIGNAL \inst3|Mux238~3_combout\ : std_logic;
SIGNAL \inst3|generic_register_b[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux238~4_combout\ : std_logic;
SIGNAL \inst3|Mux238~0_combout\ : std_logic;
SIGNAL \inst3|stack_pointer[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux238~1_combout\ : std_logic;
SIGNAL \inst3|Mux238~5_combout\ : std_logic;
SIGNAL \inst3|Mux238~6_combout\ : std_logic;
SIGNAL \inst3|Mux238~7_combout\ : std_logic;
SIGNAL \inst3|Mux239~3_combout\ : std_logic;
SIGNAL \inst3|segment_register[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux239~4_combout\ : std_logic;
SIGNAL \inst3|Mux239~5_combout\ : std_logic;
SIGNAL \inst3|Mux239~6_combout\ : std_logic;
SIGNAL \inst3|Mux239~1_combout\ : std_logic;
SIGNAL \inst3|Mux239~2_combout\ : std_logic;
SIGNAL \inst3|Mux239~7_combout\ : std_logic;
SIGNAL \inst3|Mux239~8_combout\ : std_logic;
SIGNAL \inst3|Mux241~4_combout\ : std_logic;
SIGNAL \inst3|Mux241~7_combout\ : std_logic;
SIGNAL \inst3|Mux241~8_combout\ : std_logic;
SIGNAL \inst3|Mux241~9_combout\ : std_logic;
SIGNAL \inst3|Mux241~0_combout\ : std_logic;
SIGNAL \inst3|Mux241~1_combout\ : std_logic;
SIGNAL \inst3|Mux241~10_combout\ : std_logic;
SIGNAL \inst3|Mux241~11_combout\ : std_logic;
SIGNAL \inst3|program_counter[14]~46\ : std_logic;
SIGNAL \inst3|program_counter[15]~47_combout\ : std_logic;
SIGNAL \inst3|Mux244~0_combout\ : std_logic;
SIGNAL \inst3|Mux244~1_combout\ : std_logic;
SIGNAL \inst3|Mux244~2_combout\ : std_logic;
SIGNAL \inst3|Mux244~3_combout\ : std_logic;
SIGNAL \inst3|generic_register_a[15]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux244~4_combout\ : std_logic;
SIGNAL \inst3|Mux244~5_combout\ : std_logic;
SIGNAL \inst3|Mux244~6_combout\ : std_logic;
SIGNAL \inst3|Mux244~7_combout\ : std_logic;
SIGNAL \inst3|generic_register_a[13]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux242~2_combout\ : std_logic;
SIGNAL \inst3|Mux242~3_combout\ : std_logic;
SIGNAL \inst3|Mux242~4_combout\ : std_logic;
SIGNAL \inst3|segment_offset_h_register[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux242~0_combout\ : std_logic;
SIGNAL \inst3|Mux242~1_combout\ : std_logic;
SIGNAL \inst3|Mux242~5_combout\ : std_logic;
SIGNAL \inst3|Mux242~6_combout\ : std_logic;
SIGNAL \inst3|Mux242~7_combout\ : std_logic;
SIGNAL \inst|tmp2~9_combout\ : std_logic;
SIGNAL \inst|tmp2~8_combout\ : std_logic;
SIGNAL \inst|tmp2~10_combout\ : std_logic;
SIGNAL \inst|tmp2~12_combout\ : std_logic;
SIGNAL \inst|tmp2~13_combout\ : std_logic;
SIGNAL \inst|tmp2~16_combout\ : std_logic;
SIGNAL \inst|tmp2~15_combout\ : std_logic;
SIGNAL \inst|tmp2~18_combout\ : std_logic;
SIGNAL \inst|tmp2~19_combout\ : std_logic;
SIGNAL \inst|tmp2~20_combout\ : std_logic;
SIGNAL \inst|tmp2~21_combout\ : std_logic;
SIGNAL \inst|tmp2~49_combout\ : std_logic;
SIGNAL \inst|tmp2~50_combout\ : std_logic;
SIGNAL \inst|tmp2~52_combout\ : std_logic;
SIGNAL \inst|tmp2~23_combout\ : std_logic;
SIGNAL \inst|tmp2~25_combout\ : std_logic;
SIGNAL \inst|tmp2~26_combout\ : std_logic;
SIGNAL \inst|tmp2~24_combout\ : std_logic;
SIGNAL \inst|tmp2~30_combout\ : std_logic;
SIGNAL \inst|tmp2~27_combout\ : std_logic;
SIGNAL \inst|tmp2~31_combout\ : std_logic;
SIGNAL \inst|tmp2~104_combout\ : std_logic;
SIGNAL \inst|tmp2~105_combout\ : std_logic;
SIGNAL \inst|tmp2~28_combout\ : std_logic;
SIGNAL \inst|tmp2~102_combout\ : std_logic;
SIGNAL \inst|tmp2~29_combout\ : std_logic;
SIGNAL \inst|tmp2~33_combout\ : std_logic;
SIGNAL \inst|tmp2~34_combout\ : std_logic;
SIGNAL \inst|tmp2~32_combout\ : std_logic;
SIGNAL \inst|tmp2~35_combout\ : std_logic;
SIGNAL \inst|tmp2~36_combout\ : std_logic;
SIGNAL \inst|tmp2~37_combout\ : std_logic;
SIGNAL \inst|tmp2~38_combout\ : std_logic;
SIGNAL \inst|tmp2~54_combout\ : std_logic;
SIGNAL \inst|tmp2~53_combout\ : std_logic;
SIGNAL \inst|tmp2~55_combout\ : std_logic;
SIGNAL \inst|tmp2~65_combout\ : std_logic;
SIGNAL \inst|tmp2~61_combout\ : std_logic;
SIGNAL \inst|tmp2~62_combout\ : std_logic;
SIGNAL \inst|tmp2~63_combout\ : std_logic;
SIGNAL \inst|tmp2~66_combout\ : std_logic;
SIGNAL \inst|tmp2~64_combout\ : std_logic;
SIGNAL \inst|tmp2~77_combout\ : std_logic;
SIGNAL \inst3|Mux233~0_combout\ : std_logic;
SIGNAL \inst3|Mux233~1_combout\ : std_logic;
SIGNAL \inst3|Mux233~2_combout\ : std_logic;
SIGNAL \inst3|Mux233~3_combout\ : std_logic;
SIGNAL \inst3|Mux233~4_combout\ : std_logic;
SIGNAL \inst3|Mux233~5_combout\ : std_logic;
SIGNAL \inst3|Mux233~6_combout\ : std_logic;
SIGNAL \inst3|Mux233~7_combout\ : std_logic;
SIGNAL \inst|tmp2~73_combout\ : std_logic;
SIGNAL \inst|tmp2~72_combout\ : std_logic;
SIGNAL \inst|tmp2~74_combout\ : std_logic;
SIGNAL \inst|tmp2~75_combout\ : std_logic;
SIGNAL \inst|tmp2~76_combout\ : std_logic;
SIGNAL \inst|tmp2~78_combout\ : std_logic;
SIGNAL \inst|tmp2~67_combout\ : std_logic;
SIGNAL \inst|tmp2~56_combout\ : std_logic;
SIGNAL \inst|tmp2~41_combout\ : std_logic;
SIGNAL \inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|tmp2~40_combout\ : std_logic;
SIGNAL \inst|tmp2~42_combout\ : std_logic;
SIGNAL \inst|tmp2~44_combout\ : std_logic;
SIGNAL \inst|tmp2~103_combout\ : std_logic;
SIGNAL \inst|tmp2~46_combout\ : std_logic;
SIGNAL \inst|tmp2~47_combout\ : std_logic;
SIGNAL \inst|tmp2~39_combout\ : std_logic;
SIGNAL \inst|tmp2~57_combout\ : std_logic;
SIGNAL \inst|tmp2~48_combout\ : std_logic;
SIGNAL \inst|tmp2~69_combout\ : std_logic;
SIGNAL \inst|tmp2~59_combout\ : std_logic;
SIGNAL \inst|tmp2~70_combout\ : std_logic;
SIGNAL \inst|tmp2~79_combout\ : std_logic;
SIGNAL \inst|tmp2~90_combout\ : std_logic;
SIGNAL \inst|tmp2~91_combout\ : std_logic;
SIGNAL \inst|tmp2~86_combout\ : std_logic;
SIGNAL \inst|tmp2~83_combout\ : std_logic;
SIGNAL \inst|tmp2~84_combout\ : std_logic;
SIGNAL \inst|tmp2~85_combout\ : std_logic;
SIGNAL \inst|tmp2~88_combout\ : std_logic;
SIGNAL \inst|tmp2~87_combout\ : std_logic;
SIGNAL \inst|tmp2~89_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|program_counter[12]~41\ : std_logic;
SIGNAL \inst3|program_counter[13]~43_combout\ : std_logic;
SIGNAL \inst3|program_counter[13]~44\ : std_logic;
SIGNAL \inst3|program_counter[14]~45_combout\ : std_logic;
SIGNAL \inst3|Mux243~0_combout\ : std_logic;
SIGNAL \inst3|Mux243~1_combout\ : std_logic;
SIGNAL \inst3|Mux243~5_combout\ : std_logic;
SIGNAL \inst3|generic_register_d[14]~feeder_combout\ : std_logic;
SIGNAL \inst3|generic_register_c[14]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux243~6_combout\ : std_logic;
SIGNAL \inst3|Mux243~7_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|tmp2~43_combout\ : std_logic;
SIGNAL \inst|tmp2~45_combout\ : std_logic;
SIGNAL \inst|tmp2~58_combout\ : std_logic;
SIGNAL \inst|tmp2~68_combout\ : std_logic;
SIGNAL \inst|tmp2~80_combout\ : std_logic;
SIGNAL \inst|tmp2~81_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux6~12_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|Add31~0_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst3|Mux213~0_combout\ : std_logic;
SIGNAL \inst3|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux213~3_combout\ : std_logic;
SIGNAL \inst3|segment_offset_l_register[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux213~4_combout\ : std_logic;
SIGNAL \inst3|generic_register_a[1]~1_combout\ : std_logic;
SIGNAL \inst3|Mux213~1_combout\ : std_logic;
SIGNAL \inst3|Mux213~2_combout\ : std_logic;
SIGNAL \inst3|Mux213~5_combout\ : std_logic;
SIGNAL \inst3|Mux213~6_combout\ : std_logic;
SIGNAL \inst3|Mux213~7_combout\ : std_logic;
SIGNAL \inst3|Mux212~0_combout\ : std_logic;
SIGNAL \inst3|generic_register_b[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux212~1_combout\ : std_logic;
SIGNAL \inst3|Mux212~2_combout\ : std_logic;
SIGNAL \inst3|segment_offset_l_register[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux212~3_combout\ : std_logic;
SIGNAL \inst3|Mux212~4_combout\ : std_logic;
SIGNAL \inst3|Mux212~5_combout\ : std_logic;
SIGNAL \inst3|Mux212~6_combout\ : std_logic;
SIGNAL \inst3|Mux212~7_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \inst3|generic_register_b[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux214~4_combout\ : std_logic;
SIGNAL \inst3|Mux214~5_combout\ : std_logic;
SIGNAL \inst3|Mux214~6_combout\ : std_logic;
SIGNAL \inst3|Mux214~7_combout\ : std_logic;
SIGNAL \inst3|Mux214~8_combout\ : std_logic;
SIGNAL \inst3|Mux214~3_combout\ : std_logic;
SIGNAL \inst3|Mux214~9_combout\ : std_logic;
SIGNAL \inst3|Mux214~10_combout\ : std_logic;
SIGNAL \inst3|Mux229~0_combout\ : std_logic;
SIGNAL \inst3|Mux229~1_combout\ : std_logic;
SIGNAL \inst3|Mux229~2_combout\ : std_logic;
SIGNAL \inst3|Mux229~3_combout\ : std_logic;
SIGNAL \inst3|Mux229~4_combout\ : std_logic;
SIGNAL \inst3|Mux229~5_combout\ : std_logic;
SIGNAL \inst3|Mux229~6_combout\ : std_logic;
SIGNAL \inst3|Mux229~7_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \inst|Mux6~9_combout\ : std_logic;
SIGNAL \inst|Mux6~8_combout\ : std_logic;
SIGNAL \inst|Mux6~10_combout\ : std_logic;
SIGNAL \inst|Mux6~11_combout\ : std_logic;
SIGNAL \inst|Mux6~13_combout\ : std_logic;
SIGNAL \inst3|Mux222~2_combout\ : std_logic;
SIGNAL \inst3|Mux222~3_combout\ : std_logic;
SIGNAL \inst3|Mux222~4_combout\ : std_logic;
SIGNAL \inst3|Mux222~5_combout\ : std_logic;
SIGNAL \inst3|Mux222~0_combout\ : std_logic;
SIGNAL \inst3|Mux222~1_combout\ : std_logic;
SIGNAL \inst3|Mux222~6_combout\ : std_logic;
SIGNAL \inst3|Mux222~7_combout\ : std_logic;
SIGNAL \inst3|Mux221~0_combout\ : std_logic;
SIGNAL \inst3|Mux221~1_combout\ : std_logic;
SIGNAL \inst3|Mux221~2_combout\ : std_logic;
SIGNAL \inst3|Mux221~3_combout\ : std_logic;
SIGNAL \inst3|Mux221~4_combout\ : std_logic;
SIGNAL \inst3|Mux221~5_combout\ : std_logic;
SIGNAL \inst3|Mux221~6_combout\ : std_logic;
SIGNAL \inst3|Mux221~7_combout\ : std_logic;
SIGNAL \inst|Mux6~4_combout\ : std_logic;
SIGNAL \inst|Mux6~5_combout\ : std_logic;
SIGNAL \inst|Mux6~6_combout\ : std_logic;
SIGNAL \inst|Mux6~7_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \inst|Mux7~2_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \inst|Mux7~3_combout\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst3|program_counter[9]~35\ : std_logic;
SIGNAL \inst3|program_counter[10]~36_combout\ : std_logic;
SIGNAL \inst3|program_counter[10]~37\ : std_logic;
SIGNAL \inst3|program_counter[11]~38_combout\ : std_logic;
SIGNAL \inst3|Mux240~0_combout\ : std_logic;
SIGNAL \inst3|Mux240~1_combout\ : std_logic;
SIGNAL \inst3|generic_register_b[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|segment_register[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux240~2_combout\ : std_logic;
SIGNAL \inst3|Mux240~3_combout\ : std_logic;
SIGNAL \inst3|Mux240~4_combout\ : std_logic;
SIGNAL \inst3|Mux240~5_combout\ : std_logic;
SIGNAL \inst3|Mux240~6_combout\ : std_logic;
SIGNAL \inst3|Mux240~7_combout\ : std_logic;
SIGNAL \inst|tmp2~11_combout\ : std_logic;
SIGNAL \inst|tmp2~14_combout\ : std_logic;
SIGNAL \inst|tmp2~17_combout\ : std_logic;
SIGNAL \inst|tmp2~22_combout\ : std_logic;
SIGNAL \inst|tmp2~51_combout\ : std_logic;
SIGNAL \inst|tmp2~60_combout\ : std_logic;
SIGNAL \inst|tmp2~71_combout\ : std_logic;
SIGNAL \inst|tmp2~82_combout\ : std_logic;
SIGNAL \inst|tmp2~95_combout\ : std_logic;
SIGNAL \inst|tmp2~94_combout\ : std_logic;
SIGNAL \inst|tmp2~93_combout\ : std_logic;
SIGNAL \inst|tmp2~101_combout\ : std_logic;
SIGNAL \inst|tmp2~100_combout\ : std_logic;
SIGNAL \inst|tmp2~99_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux12~1_combout\ : std_logic;
SIGNAL \inst|LessThan28~0_combout\ : std_logic;
SIGNAL \inst|Mux12~2_combout\ : std_logic;
SIGNAL \inst3|program_counter[4]~25\ : std_logic;
SIGNAL \inst3|program_counter[5]~26_combout\ : std_logic;
SIGNAL \inst3|program_counter[5]~27\ : std_logic;
SIGNAL \inst3|program_counter[6]~28_combout\ : std_logic;
SIGNAL \inst3|program_counter[6]~29\ : std_logic;
SIGNAL \inst3|program_counter[7]~30_combout\ : std_logic;
SIGNAL \inst3|Mux219~6_combout\ : std_logic;
SIGNAL \inst3|Mux219~7_combout\ : std_logic;
SIGNAL \inst3|Mux219~8_combout\ : std_logic;
SIGNAL \inst3|Mux219~4_combout\ : std_logic;
SIGNAL \inst3|Mux219~5_combout\ : std_logic;
SIGNAL \inst3|Mux219~9_combout\ : std_logic;
SIGNAL \inst3|Mux219~10_combout\ : std_logic;
SIGNAL \inst3|Mux219~11_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|tmp2~92_combout\ : std_logic;
SIGNAL \inst|tmp2~96_combout\ : std_logic;
SIGNAL \inst|tmp2~97_combout\ : std_logic;
SIGNAL \inst|tmp2~98_combout\ : std_logic;
SIGNAL \inst|Add26~0_combout\ : std_logic;
SIGNAL \inst|LessThan29~0_combout\ : std_logic;
SIGNAL \inst|Mux9~1_combout\ : std_logic;
SIGNAL \inst|Mux9~2_combout\ : std_logic;
SIGNAL \inst3|Mux83~117_combout\ : std_logic;
SIGNAL \inst3|Mux223~2_combout\ : std_logic;
SIGNAL \inst3|Mux223~3_combout\ : std_logic;
SIGNAL \inst3|Mux223~4_combout\ : std_logic;
SIGNAL \inst3|Mux223~0_combout\ : std_logic;
SIGNAL \inst3|Mux223~1_combout\ : std_logic;
SIGNAL \inst3|Mux223~5_combout\ : std_logic;
SIGNAL \inst3|Mux223~6_combout\ : std_logic;
SIGNAL \inst3|Mux223~7_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Add31~1_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst1|Mux11~1_combout\ : std_logic;
SIGNAL \inst1|Mux10~2_combout\ : std_logic;
SIGNAL \inst1|Mux10~2clkctrl_outclk\ : std_logic;
SIGNAL \inst1|action~3_combout\ : std_logic;
SIGNAL \inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst1|action~1_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|action~2_combout\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst3|Mux219~0_combout\ : std_logic;
SIGNAL \inst3|Mux217~0_combout\ : std_logic;
SIGNAL \inst3|Mux217~1_combout\ : std_logic;
SIGNAL \inst3|Mux217~2_combout\ : std_logic;
SIGNAL \inst3|Mux217~3_combout\ : std_logic;
SIGNAL \inst3|Mux217~4_combout\ : std_logic;
SIGNAL \inst3|Mux217~5_combout\ : std_logic;
SIGNAL \inst3|Mux217~6_combout\ : std_logic;
SIGNAL \inst3|Mux217~7_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|Mux11~1_combout\ : std_logic;
SIGNAL \inst3|Mux83~48_combout\ : std_logic;
SIGNAL \inst3|Mux83~119_combout\ : std_logic;
SIGNAL \inst3|Mux230~4_combout\ : std_logic;
SIGNAL \inst3|Mux230~5_combout\ : std_logic;
SIGNAL \inst3|Mux230~6_combout\ : std_logic;
SIGNAL \inst3|Mux230~7_combout\ : std_logic;
SIGNAL \inst3|Mux230~8_combout\ : std_logic;
SIGNAL \inst3|Mux230~9_combout\ : std_logic;
SIGNAL \inst3|Mux230~10_combout\ : std_logic;
SIGNAL \inst3|Mux230~11_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux15~1_combout\ : std_logic;
SIGNAL \inst3|Mux226~0_combout\ : std_logic;
SIGNAL \inst3|Mux220~0_combout\ : std_logic;
SIGNAL \inst3|Mux220~1_combout\ : std_logic;
SIGNAL \inst3|Mux220~2_combout\ : std_logic;
SIGNAL \inst3|Mux220~3_combout\ : std_logic;
SIGNAL \inst3|Mux220~4_combout\ : std_logic;
SIGNAL \inst3|Mux220~5_combout\ : std_logic;
SIGNAL \inst3|Mux220~6_combout\ : std_logic;
SIGNAL \inst3|Mux220~7_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst3|Mux230~2_combout\ : std_logic;
SIGNAL \inst3|Mux231~3_combout\ : std_logic;
SIGNAL \inst3|Mux231~4_combout\ : std_logic;
SIGNAL \inst3|Mux231~1_combout\ : std_logic;
SIGNAL \inst3|Mux231~2_combout\ : std_logic;
SIGNAL \inst3|Mux231~5_combout\ : std_logic;
SIGNAL \inst3|Mux231~0_combout\ : std_logic;
SIGNAL \inst3|Mux231~6_combout\ : std_logic;
SIGNAL \inst3|Mux231~7_combout\ : std_logic;
SIGNAL \inst|LessThan28~1_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux13~1_combout\ : std_logic;
SIGNAL \inst3|Mux218~0_combout\ : std_logic;
SIGNAL \inst3|Mux218~1_combout\ : std_logic;
SIGNAL \inst3|Mux218~2_combout\ : std_logic;
SIGNAL \inst3|Mux218~3_combout\ : std_logic;
SIGNAL \inst3|Mux218~4_combout\ : std_logic;
SIGNAL \inst3|Mux218~5_combout\ : std_logic;
SIGNAL \inst3|Mux218~6_combout\ : std_logic;
SIGNAL \inst3|Mux218~7_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst3|Mux83~113_combout\ : std_logic;
SIGNAL \inst3|Mux225~2_combout\ : std_logic;
SIGNAL \inst3|Mux225~3_combout\ : std_logic;
SIGNAL \inst3|Mux225~4_combout\ : std_logic;
SIGNAL \inst3|Mux225~0_combout\ : std_logic;
SIGNAL \inst3|Mux225~1_combout\ : std_logic;
SIGNAL \inst3|Mux225~5_combout\ : std_logic;
SIGNAL \inst3|Mux225~6_combout\ : std_logic;
SIGNAL \inst3|Mux225~7_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|state.handle_arg_as_register~1_combout\ : std_logic;
SIGNAL \inst1|state.handle_arg_as_register~q\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|action~0_combout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Mux14~1_combout\ : std_logic;
SIGNAL \inst3|Mux227~2_combout\ : std_logic;
SIGNAL \inst3|Mux227~3_combout\ : std_logic;
SIGNAL \inst3|Mux227~4_combout\ : std_logic;
SIGNAL \inst3|Mux227~0_combout\ : std_logic;
SIGNAL \inst3|Mux227~1_combout\ : std_logic;
SIGNAL \inst3|Mux227~5_combout\ : std_logic;
SIGNAL \inst3|Mux227~6_combout\ : std_logic;
SIGNAL \inst3|Mux227~7_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|instruction_register[15]~feeder_combout\ : std_logic;
SIGNAL \inst1|state.handle_args_as_registers~2_combout\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|lifecycle.save_to_register~q\ : std_logic;
SIGNAL \inst1|lifecycle~8_combout\ : std_logic;
SIGNAL \inst1|lifecycle.initial~q\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|lifecycle.fetch~q\ : std_logic;
SIGNAL \inst1|Selector4~1_combout\ : std_logic;
SIGNAL \inst1|lifecycle.decode_instruction~q\ : std_logic;
SIGNAL \inst1|state.handle_args_as_registers~0_combout\ : std_logic;
SIGNAL \inst1|state.handle_args_as_registers~1_combout\ : std_logic;
SIGNAL \inst1|state.handle_args_as_registers~q\ : std_logic;
SIGNAL \inst3|Mux226~1_combout\ : std_logic;
SIGNAL \inst3|Mux226~10_combout\ : std_logic;
SIGNAL \inst3|Mux226~11_combout\ : std_logic;
SIGNAL \inst3|Mux226~12_combout\ : std_logic;
SIGNAL \inst3|Mux226~13_combout\ : std_logic;
SIGNAL \inst3|Mux226~8_combout\ : std_logic;
SIGNAL \inst3|Mux226~9_combout\ : std_logic;
SIGNAL \inst3|Mux226~14_combout\ : std_logic;
SIGNAL \inst3|Mux226~15_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|state.fetch~q\ : std_logic;
SIGNAL \inst3|program_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|instruction_register\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|generic_register_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|stack_pointer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|segment_offset_h_register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|generic_register_c\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|segment_register\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|generic_register_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|generic_register_d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|segment_offset_l_register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|flag_register\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|action\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|REGISTER_A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|REGISTER_B\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

WR <= ww_WR;
ww_CLK <= CLK;
ww_RESET <= RESET;
RD <= ww_RD;
ADDRESS_BUS <= ww_ADDRESS_BUS;
DEBUG_ALU_ACTION_ID <= ww_DEBUG_ALU_ACTION_ID;
DEBUG_CU_INSTRUCTION <= ww_DEBUG_CU_INSTRUCTION;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\inst3|Mux228~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|Mux228~0_combout\);

\inst1|Mux10~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|Mux10~2_combout\);

\inst3|Mux245~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|Mux245~0_combout\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y19_N2
\DATA_BUS_OUT[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[15]~output_o\);

-- Location: IOOBUF_X14_Y41_N2
\DATA_BUS_OUT[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[14]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\DATA_BUS_OUT[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[13]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\DATA_BUS_OUT[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[12]~output_o\);

-- Location: IOOBUF_X7_Y41_N23
\DATA_BUS_OUT[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\DATA_BUS_OUT[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[10]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\DATA_BUS_OUT[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[9]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\DATA_BUS_OUT[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[8]~output_o\);

-- Location: IOOBUF_X7_Y41_N16
\DATA_BUS_OUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[7]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\DATA_BUS_OUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\DATA_BUS_OUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[5]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\DATA_BUS_OUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\DATA_BUS_OUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\DATA_BUS_OUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[2]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\DATA_BUS_OUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[1]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\DATA_BUS_OUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_BUS_OUT[0]~output_o\);

-- Location: IOOBUF_X10_Y41_N2
\DATA_BUS_IN[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[15]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\DATA_BUS_IN[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[14]~output_o\);

-- Location: IOOBUF_X5_Y41_N9
\DATA_BUS_IN[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\DATA_BUS_IN[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[12]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\DATA_BUS_IN[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[11]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\DATA_BUS_IN[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[10]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\DATA_BUS_IN[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[9]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\DATA_BUS_IN[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[8]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\DATA_BUS_IN[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\DATA_BUS_IN[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\DATA_BUS_IN[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[5]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\DATA_BUS_IN[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[4]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\DATA_BUS_IN[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[3]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\DATA_BUS_IN[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[2]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\DATA_BUS_IN[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\DATA_BUS_IN[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS_IN[0]~output_o\);

-- Location: IOOBUF_X3_Y41_N2
\WR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WR~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\RD~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|state.fetch~q\,
	devoe => ww_devoe,
	o => \RD~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\ADDRESS_BUS[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[15]~output_o\);

-- Location: IOOBUF_X7_Y41_N2
\ADDRESS_BUS[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[14]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\ADDRESS_BUS[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[13]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\ADDRESS_BUS[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\ADDRESS_BUS[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[11]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ADDRESS_BUS[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[10]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\ADDRESS_BUS[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[9]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\ADDRESS_BUS[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\ADDRESS_BUS[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[7]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\ADDRESS_BUS[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\ADDRESS_BUS[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[5]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\ADDRESS_BUS[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[4]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\ADDRESS_BUS[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\ADDRESS_BUS[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\ADDRESS_BUS[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[1]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\ADDRESS_BUS[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDRESS_BUS[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\DEBUG_ALU_ACTION_ID[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \DEBUG_ALU_ACTION_ID[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\DEBUG_ALU_ACTION_ID[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_ALU_ACTION_ID[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\DEBUG_ALU_ACTION_ID[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \DEBUG_ALU_ACTION_ID[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\DEBUG_CU_INSTRUCTION[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[15]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\DEBUG_CU_INSTRUCTION[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\DEBUG_CU_INSTRUCTION[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[13]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\DEBUG_CU_INSTRUCTION[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[12]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\DEBUG_CU_INSTRUCTION[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[11]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\DEBUG_CU_INSTRUCTION[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[10]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\DEBUG_CU_INSTRUCTION[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[9]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\DEBUG_CU_INSTRUCTION[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[8]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\DEBUG_CU_INSTRUCTION[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[7]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\DEBUG_CU_INSTRUCTION[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[6]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\DEBUG_CU_INSTRUCTION[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[5]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\DEBUG_CU_INSTRUCTION[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[4]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\DEBUG_CU_INSTRUCTION[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[3]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\DEBUG_CU_INSTRUCTION[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[2]~output_o\);

-- Location: IOOBUF_X5_Y41_N2
\DEBUG_CU_INSTRUCTION[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\DEBUG_CU_INSTRUCTION[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_CU_INSTRUCTION[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X27_Y0_N22
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X34_Y6_N8
\inst1|state.handle_arg_as_register~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|state.handle_arg_as_register~0_combout\ = (\inst1|state.handle_arg_as_register~q\) # (!\inst3|instruction_register\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~q\,
	datac => \inst3|instruction_register\(14),
	combout => \inst1|state.handle_arg_as_register~0_combout\);

-- Location: LCCOMB_X31_Y6_N4
\inst1|action~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|action~4_combout\ = (\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst1|state.handle_arg_as_register~q\,
	combout => \inst1|action~4_combout\);

-- Location: LCCOMB_X30_Y10_N20
\inst3|Mux226~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~5_combout\ = (\inst1|state.handle_args_as_registers~q\ & \inst3|instruction_register\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(1),
	combout => \inst3|Mux226~5_combout\);

-- Location: LCCOMB_X34_Y6_N20
\inst1|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\inst1|lifecycle.save_to_register~q\) # ((\inst1|Selector4~0_combout\ & \inst1|state.save_to_register~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector4~0_combout\,
	datac => \inst1|state.save_to_register~q\,
	datad => \inst1|lifecycle.save_to_register~q\,
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X34_Y6_N21
\inst1|state.save_to_register\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector2~0_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.save_to_register~q\);

-- Location: LCCOMB_X35_Y9_N2
\inst3|Mux83~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~57_combout\ = (\inst3|instruction_register\(5) & \inst3|instruction_register\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux83~57_combout\);

-- Location: LCCOMB_X35_Y9_N8
\inst3|Mux83~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~114_combout\ = (!\inst3|instruction_register\(6) & (!\inst3|instruction_register\(7) & (\inst1|state.save_to_register~q\ & \inst3|Mux83~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|instruction_register\(7),
	datac => \inst1|state.save_to_register~q\,
	datad => \inst3|Mux83~57_combout\,
	combout => \inst3|Mux83~114_combout\);

-- Location: FF_X30_Y7_N15
\inst3|generic_register_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux9~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(7));

-- Location: LCCOMB_X30_Y6_N16
\inst3|Mux219~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~3_combout\ = (\inst1|state.handle_args_as_registers~q\ & ((\inst3|instruction_register\(2)) # ((\inst3|instruction_register\(1) & \inst3|instruction_register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(1),
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(2),
	datad => \inst3|instruction_register\(3),
	combout => \inst3|Mux219~3_combout\);

-- Location: LCCOMB_X30_Y6_N6
\inst3|Mux219~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~2_combout\ = ((!\inst3|instruction_register\(3) & ((!\inst3|instruction_register\(2)) # (!\inst3|instruction_register\(1))))) # (!\inst1|state.handle_args_as_registers~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(1),
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(2),
	datad => \inst3|instruction_register\(3),
	combout => \inst3|Mux219~2_combout\);

-- Location: LCCOMB_X34_Y9_N0
\inst3|program_counter[0]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[0]~16_combout\ = \inst3|program_counter\(0) $ (VCC)
-- \inst3|program_counter[0]~17\ = CARRY(\inst3|program_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(0),
	datad => VCC,
	combout => \inst3|program_counter[0]~16_combout\,
	cout => \inst3|program_counter[0]~17\);

-- Location: LCCOMB_X36_Y8_N12
\inst3|Mux83~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~21_combout\ = (!\inst3|instruction_register\(5) & !\inst3|instruction_register\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux83~21_combout\);

-- Location: LCCOMB_X37_Y8_N10
\inst3|Mux83~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~111_combout\ = (\inst3|Mux83~21_combout\ & (\inst3|instruction_register\(6) & (!\inst3|instruction_register\(7) & \inst1|state.save_to_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux83~21_combout\,
	datab => \inst3|instruction_register\(6),
	datac => \inst3|instruction_register\(7),
	datad => \inst1|state.save_to_register~q\,
	combout => \inst3|Mux83~111_combout\);

-- Location: LCCOMB_X37_Y8_N0
\inst3|program_counter[3]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[3]~42_combout\ = (\inst1|state.fetch~q\) # (\inst3|Mux83~111_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|state.fetch~q\,
	datad => \inst3|Mux83~111_combout\,
	combout => \inst3|program_counter[3]~42_combout\);

-- Location: FF_X34_Y9_N1
\inst3|program_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[0]~16_combout\,
	asdata => \inst|Mux16~0_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(0));

-- Location: LCCOMB_X34_Y9_N2
\inst3|program_counter[1]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[1]~18_combout\ = (\inst3|program_counter\(1) & (!\inst3|program_counter[0]~17\)) # (!\inst3|program_counter\(1) & ((\inst3|program_counter[0]~17\) # (GND)))
-- \inst3|program_counter[1]~19\ = CARRY((!\inst3|program_counter[0]~17\) # (!\inst3|program_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(1),
	datad => VCC,
	cin => \inst3|program_counter[0]~17\,
	combout => \inst3|program_counter[1]~18_combout\,
	cout => \inst3|program_counter[1]~19\);

-- Location: FF_X34_Y9_N3
\inst3|program_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[1]~18_combout\,
	asdata => \inst|Mux15~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(1));

-- Location: LCCOMB_X34_Y9_N4
\inst3|program_counter[2]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[2]~20_combout\ = (\inst3|program_counter\(2) & (\inst3|program_counter[1]~19\ $ (GND))) # (!\inst3|program_counter\(2) & (!\inst3|program_counter[1]~19\ & VCC))
-- \inst3|program_counter[2]~21\ = CARRY((\inst3|program_counter\(2) & !\inst3|program_counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(2),
	datad => VCC,
	cin => \inst3|program_counter[1]~19\,
	combout => \inst3|program_counter[2]~20_combout\,
	cout => \inst3|program_counter[2]~21\);

-- Location: FF_X34_Y9_N5
\inst3|program_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[2]~20_combout\,
	asdata => \inst|Mux14~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(2));

-- Location: LCCOMB_X34_Y9_N6
\inst3|program_counter[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[3]~22_combout\ = (\inst3|program_counter\(3) & (!\inst3|program_counter[2]~21\)) # (!\inst3|program_counter\(3) & ((\inst3|program_counter[2]~21\) # (GND)))
-- \inst3|program_counter[3]~23\ = CARRY((!\inst3|program_counter[2]~21\) # (!\inst3|program_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(3),
	datad => VCC,
	cin => \inst3|program_counter[2]~21\,
	combout => \inst3|program_counter[3]~22_combout\,
	cout => \inst3|program_counter[3]~23\);

-- Location: FF_X34_Y9_N7
\inst3|program_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[3]~22_combout\,
	asdata => \inst|Mux13~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(3));

-- Location: LCCOMB_X34_Y9_N8
\inst3|program_counter[4]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[4]~24_combout\ = (\inst3|program_counter\(4) & (\inst3|program_counter[3]~23\ $ (GND))) # (!\inst3|program_counter\(4) & (!\inst3|program_counter[3]~23\ & VCC))
-- \inst3|program_counter[4]~25\ = CARRY((\inst3|program_counter\(4) & !\inst3|program_counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(4),
	datad => VCC,
	cin => \inst3|program_counter[3]~23\,
	combout => \inst3|program_counter[4]~24_combout\,
	cout => \inst3|program_counter[4]~25\);

-- Location: LCCOMB_X35_Y9_N12
\inst3|Mux232~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux232~0_combout\ = (\inst3|program_counter\(3) & (\inst3|instruction_register\(6) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(3),
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst1|state.handle_arg_as_register~q\,
	datad => \inst3|instruction_register\(6),
	combout => \inst3|Mux232~0_combout\);

-- Location: LCCOMB_X32_Y6_N30
\inst3|Mux230~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~0_combout\ = (\inst3|instruction_register\(5) & (((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\)))) # (!\inst3|instruction_register\(5) & (\inst3|instruction_register\(8) & 
-- ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(5),
	datab => \inst3|instruction_register\(8),
	datac => \inst1|state.handle_arg_as_register~q\,
	datad => \inst1|state.handle_args_as_registers~q\,
	combout => \inst3|Mux230~0_combout\);

-- Location: LCCOMB_X32_Y6_N14
\inst1|REGISTER_ID_TO_READ_A[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ = (\inst3|instruction_register\(6) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(6),
	combout => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\);

-- Location: LCCOMB_X32_Y6_N6
\inst3|Mux230~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~1_combout\ = (!\inst3|Mux230~0_combout\ & ((!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\) # (!\inst3|instruction_register\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(7),
	datab => \inst3|Mux230~0_combout\,
	datad => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	combout => \inst3|Mux230~1_combout\);

-- Location: LCCOMB_X32_Y6_N10
\inst3|Mux83~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~116_combout\ = (\inst3|instruction_register\(7) & (!\inst3|instruction_register\(6) & (\inst1|state.save_to_register~q\ & \inst3|Mux83~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(7),
	datab => \inst3|instruction_register\(6),
	datac => \inst1|state.save_to_register~q\,
	datad => \inst3|Mux83~21_combout\,
	combout => \inst3|Mux83~116_combout\);

-- Location: FF_X31_Y9_N17
\inst3|segment_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux13~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(3));

-- Location: LCCOMB_X31_Y6_N12
\inst3|Mux239~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux239~0_combout\ = (\inst3|instruction_register\(7) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datac => \inst1|state.handle_arg_as_register~q\,
	datad => \inst3|instruction_register\(7),
	combout => \inst3|Mux239~0_combout\);

-- Location: LCCOMB_X29_Y9_N24
\inst3|segment_offset_l_register[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|segment_offset_l_register[3]~feeder_combout\ = \inst|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux13~1_combout\,
	combout => \inst3|segment_offset_l_register[3]~feeder_combout\);

-- Location: LCCOMB_X31_Y8_N8
\inst3|Mux83~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~3_combout\ = (!\inst3|instruction_register\(8) & \inst3|instruction_register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|instruction_register\(8),
	datad => \inst3|instruction_register\(5),
	combout => \inst3|Mux83~3_combout\);

-- Location: LCCOMB_X30_Y8_N22
\inst3|Mux83~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~118_combout\ = (\inst3|instruction_register\(7) & (!\inst3|instruction_register\(6) & (\inst3|Mux83~3_combout\ & \inst1|state.save_to_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(7),
	datab => \inst3|instruction_register\(6),
	datac => \inst3|Mux83~3_combout\,
	datad => \inst1|state.save_to_register~q\,
	combout => \inst3|Mux83~118_combout\);

-- Location: FF_X29_Y9_N25
\inst3|segment_offset_l_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|segment_offset_l_register[3]~feeder_combout\,
	ena => \inst3|Mux83~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_l_register\(3));

-- Location: LCCOMB_X31_Y8_N6
\inst3|Mux83~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~112_combout\ = (\inst3|instruction_register\(6) & (\inst3|Mux83~3_combout\ & (\inst3|instruction_register\(7) & \inst1|state.save_to_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|Mux83~3_combout\,
	datac => \inst3|instruction_register\(7),
	datad => \inst1|state.save_to_register~q\,
	combout => \inst3|Mux83~112_combout\);

-- Location: FF_X30_Y9_N11
\inst3|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux13~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(3));

-- Location: LCCOMB_X31_Y8_N28
\inst3|Mux83~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~109_combout\ = (\inst3|instruction_register\(6) & (\inst3|Mux83~3_combout\ & (!\inst3|instruction_register\(7) & \inst1|state.save_to_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|Mux83~3_combout\,
	datac => \inst3|instruction_register\(7),
	datad => \inst1|state.save_to_register~q\,
	combout => \inst3|Mux83~109_combout\);

-- Location: FF_X30_Y9_N25
\inst3|stack_pointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux13~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(3));

-- Location: LCCOMB_X29_Y9_N18
\inst3|Mux232~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux232~3_combout\ = (\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (((\inst3|stack_pointer\(3)) # (\inst3|Mux239~0_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (\inst3|instruction_register\(3) & ((!\inst3|Mux239~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(3),
	datab => \inst3|stack_pointer\(3),
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux232~3_combout\);

-- Location: LCCOMB_X29_Y9_N8
\inst3|Mux232~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux232~4_combout\ = (\inst3|Mux239~0_combout\ & ((\inst3|Mux232~3_combout\ & ((\inst3|tmp\(3)))) # (!\inst3|Mux232~3_combout\ & (\inst3|segment_offset_l_register\(3))))) # (!\inst3|Mux239~0_combout\ & (((\inst3|Mux232~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|segment_offset_l_register\(3),
	datac => \inst3|tmp\(3),
	datad => \inst3|Mux232~3_combout\,
	combout => \inst3|Mux232~4_combout\);

-- Location: LCCOMB_X32_Y6_N24
\inst1|REGISTER_ID_TO_READ_A[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ = (\inst3|instruction_register\(5) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(5),
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst1|state.handle_arg_as_register~q\,
	combout => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\);

-- Location: FF_X32_Y8_N9
\inst3|generic_register_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux13~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(3));

-- Location: FF_X32_Y8_N11
\inst3|generic_register_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux13~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(3));

-- Location: FF_X31_Y8_N13
\inst3|generic_register_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux13~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(3));

-- Location: LCCOMB_X31_Y10_N18
\inst3|generic_register_a[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_a[3]~0_combout\ = !\inst|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux13~1_combout\,
	combout => \inst3|generic_register_a[3]~0_combout\);

-- Location: LCCOMB_X31_Y8_N30
\inst3|Mux83~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~115_combout\ = (!\inst3|instruction_register\(6) & (\inst3|Mux83~48_combout\ & (!\inst3|instruction_register\(7) & \inst1|state.save_to_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|Mux83~48_combout\,
	datac => \inst3|instruction_register\(7),
	datad => \inst1|state.save_to_register~q\,
	combout => \inst3|Mux83~115_combout\);

-- Location: FF_X31_Y10_N19
\inst3|generic_register_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_a[3]~0_combout\,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(3));

-- Location: LCCOMB_X31_Y10_N4
\inst3|Mux232~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux232~1_combout\ = (\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & ((\inst3|generic_register_c\(3)) # ((\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (((!\inst3|generic_register_a\(3) & 
-- !\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_c\(3),
	datab => \inst3|generic_register_a\(3),
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux232~1_combout\);

-- Location: LCCOMB_X32_Y8_N10
\inst3|Mux232~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux232~2_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|Mux232~1_combout\ & (\inst3|generic_register_d\(3))) # (!\inst3|Mux232~1_combout\ & ((\inst3|generic_register_b\(3)))))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & 
-- (((\inst3|Mux232~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datab => \inst3|generic_register_d\(3),
	datac => \inst3|generic_register_b\(3),
	datad => \inst3|Mux232~1_combout\,
	combout => \inst3|Mux232~2_combout\);

-- Location: LCCOMB_X31_Y9_N18
\inst3|Mux232~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux232~5_combout\ = (\inst3|Mux230~2_combout\ & (\inst3|Mux230~0_combout\ & ((\inst3|Mux232~2_combout\)))) # (!\inst3|Mux230~2_combout\ & (((\inst3|Mux232~4_combout\)) # (!\inst3|Mux230~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux230~2_combout\,
	datab => \inst3|Mux230~0_combout\,
	datac => \inst3|Mux232~4_combout\,
	datad => \inst3|Mux232~2_combout\,
	combout => \inst3|Mux232~5_combout\);

-- Location: LCCOMB_X31_Y9_N16
\inst3|Mux232~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux232~6_combout\ = (\inst3|Mux230~1_combout\ & ((\inst3|Mux232~5_combout\ & (\inst3|Mux232~0_combout\)) # (!\inst3|Mux232~5_combout\ & ((\inst3|segment_register\(3)))))) # (!\inst3|Mux230~1_combout\ & (((\inst3|Mux232~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux232~0_combout\,
	datab => \inst3|Mux230~1_combout\,
	datac => \inst3|segment_register\(3),
	datad => \inst3|Mux232~5_combout\,
	combout => \inst3|Mux232~6_combout\);

-- Location: FF_X31_Y9_N21
\inst3|flag_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux13~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|flag_register\(3));

-- Location: LCCOMB_X35_Y9_N10
\inst3|Mux230~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~3_combout\ = (\inst3|instruction_register\(7) & (\inst3|instruction_register\(8) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst3|instruction_register\(7),
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux230~3_combout\);

-- Location: LCCOMB_X31_Y9_N20
\inst3|Mux232~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux232~7_combout\ = (\inst3|Mux230~3_combout\ & (((!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & \inst3|flag_register\(3))))) # (!\inst3|Mux230~3_combout\ & (\inst3|Mux232~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux232~6_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datac => \inst3|flag_register\(3),
	datad => \inst3|Mux230~3_combout\,
	combout => \inst3|Mux232~7_combout\);

-- Location: LCCOMB_X32_Y6_N4
\inst3|Mux235~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~1_combout\ = (\inst3|instruction_register\(8) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux235~1_combout\);

-- Location: LCCOMB_X32_Y6_N8
\inst3|Mux245~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux245~0_combout\ = (\inst3|Mux239~0_combout\ & (\inst3|Mux235~1_combout\ & (\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ $ (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|Mux235~1_combout\,
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux245~0_combout\);

-- Location: CLKCTRL_G15
\inst3|Mux245~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|Mux245~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|Mux245~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y9_N8
\inst3|REGISTER_A[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(3) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|REGISTER_A\(3)))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|Mux232~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux232~7_combout\,
	datab => \inst3|REGISTER_A\(3),
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(3));

-- Location: LCCOMB_X30_Y7_N12
\inst3|Mux235~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~2_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|instruction_register\(6)) # (!\inst3|instruction_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(8),
	datac => \inst3|instruction_register\(6),
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux235~2_combout\);

-- Location: LCCOMB_X31_Y6_N0
\inst3|Mux235~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~0_combout\ = (\inst3|instruction_register\(8) & (!\inst3|instruction_register\(7) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~q\,
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(8),
	datad => \inst3|instruction_register\(7),
	combout => \inst3|Mux235~0_combout\);

-- Location: FF_X31_Y7_N1
\inst3|generic_register_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux11~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(5));

-- Location: FF_X31_Y8_N23
\inst3|generic_register_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux11~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(5));

-- Location: LCCOMB_X30_Y6_N12
\inst3|segment_register[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|segment_register[5]~feeder_combout\ = \inst|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux11~1_combout\,
	combout => \inst3|segment_register[5]~feeder_combout\);

-- Location: FF_X30_Y6_N13
\inst3|segment_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|segment_register[5]~feeder_combout\,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(5));

-- Location: LCCOMB_X31_Y6_N10
\inst3|Mux235~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~3_combout\ = (!\inst3|Mux235~0_combout\ & (((!\inst3|instruction_register\(8) & !\inst3|instruction_register\(6))) # (!\inst3|Mux239~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|instruction_register\(8),
	datac => \inst3|instruction_register\(6),
	datad => \inst3|Mux235~0_combout\,
	combout => \inst3|Mux235~3_combout\);

-- Location: LCCOMB_X30_Y6_N14
\inst3|Mux234~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux234~2_combout\ = (\inst3|instruction_register\(6) & (\inst3|program_counter\(5) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst3|instruction_register\(6),
	datad => \inst3|program_counter\(5),
	combout => \inst3|Mux234~2_combout\);

-- Location: LCCOMB_X31_Y6_N24
\inst3|Mux235~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~4_combout\ = (\inst1|action~4_combout\ & ((\inst3|instruction_register\(7)) # ((\inst3|instruction_register\(6) & \inst3|Mux235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|instruction_register\(7),
	datac => \inst1|action~4_combout\,
	datad => \inst3|Mux235~0_combout\,
	combout => \inst3|Mux235~4_combout\);

-- Location: LCCOMB_X30_Y6_N24
\inst3|Mux234~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux234~3_combout\ = (\inst3|Mux235~3_combout\ & ((\inst3|Mux235~4_combout\ & (\inst3|segment_register\(5))) # (!\inst3|Mux235~4_combout\ & ((\inst3|Mux234~2_combout\))))) # (!\inst3|Mux235~3_combout\ & (((!\inst3|Mux235~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_register\(5),
	datab => \inst3|Mux235~3_combout\,
	datac => \inst3|Mux234~2_combout\,
	datad => \inst3|Mux235~4_combout\,
	combout => \inst3|Mux234~3_combout\);

-- Location: LCCOMB_X31_Y8_N22
\inst3|Mux234~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux234~4_combout\ = (\inst3|Mux235~0_combout\ & ((\inst3|Mux234~3_combout\ & (\inst3|generic_register_a\(5))) # (!\inst3|Mux234~3_combout\ & ((\inst3|generic_register_c\(5)))))) # (!\inst3|Mux235~0_combout\ & (((\inst3|Mux234~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~0_combout\,
	datab => \inst3|generic_register_a\(5),
	datac => \inst3|generic_register_c\(5),
	datad => \inst3|Mux234~3_combout\,
	combout => \inst3|Mux234~4_combout\);

-- Location: FF_X30_Y8_N1
\inst3|segment_offset_l_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux11~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_l_register\(5));

-- Location: FF_X30_Y9_N5
\inst3|stack_pointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux11~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(5));

-- Location: LCCOMB_X30_Y9_N4
\inst3|Mux234~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux234~0_combout\ = (\inst3|Mux239~0_combout\ & (((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\)))) # (!\inst3|Mux239~0_combout\ & ((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & ((\inst3|stack_pointer\(5)))) # 
-- (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (\inst3|instruction_register\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|instruction_register\(5),
	datac => \inst3|stack_pointer\(5),
	datad => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	combout => \inst3|Mux234~0_combout\);

-- Location: FF_X30_Y9_N3
\inst3|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux11~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(5));

-- Location: LCCOMB_X30_Y9_N2
\inst3|Mux234~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux234~1_combout\ = (\inst3|Mux234~0_combout\ & (((\inst3|tmp\(5)) # (!\inst3|Mux239~0_combout\)))) # (!\inst3|Mux234~0_combout\ & (\inst3|segment_offset_l_register\(5) & ((\inst3|Mux239~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_offset_l_register\(5),
	datab => \inst3|Mux234~0_combout\,
	datac => \inst3|tmp\(5),
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux234~1_combout\);

-- Location: LCCOMB_X30_Y7_N4
\inst3|Mux237~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux237~2_combout\ = (\inst3|instruction_register\(5) & (\inst3|instruction_register\(8) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst3|instruction_register\(5),
	datac => \inst3|instruction_register\(8),
	datad => \inst1|state.handle_arg_as_register~q\,
	combout => \inst3|Mux237~2_combout\);

-- Location: LCCOMB_X30_Y7_N10
\inst3|Mux234~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux234~5_combout\ = (\inst3|Mux235~2_combout\ & (((\inst3|Mux234~1_combout\) # (\inst3|Mux237~2_combout\)))) # (!\inst3|Mux235~2_combout\ & (\inst3|Mux234~4_combout\ & ((!\inst3|Mux237~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~2_combout\,
	datab => \inst3|Mux234~4_combout\,
	datac => \inst3|Mux234~1_combout\,
	datad => \inst3|Mux237~2_combout\,
	combout => \inst3|Mux234~5_combout\);

-- Location: FF_X31_Y7_N11
\inst3|generic_register_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux11~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(5));

-- Location: FF_X30_Y7_N17
\inst3|generic_register_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux11~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(5));

-- Location: LCCOMB_X30_Y7_N16
\inst3|Mux234~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux234~6_combout\ = (\inst3|Mux234~5_combout\ & ((\inst3|generic_register_d\(5)) # ((!\inst3|Mux237~2_combout\)))) # (!\inst3|Mux234~5_combout\ & (((\inst3|generic_register_b\(5) & \inst3|Mux237~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux234~5_combout\,
	datab => \inst3|generic_register_d\(5),
	datac => \inst3|generic_register_b\(5),
	datad => \inst3|Mux237~2_combout\,
	combout => \inst3|Mux234~6_combout\);

-- Location: LCCOMB_X29_Y7_N20
\inst3|Mux234~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux234~7_combout\ = (\inst3|Mux234~6_combout\ & (((!\inst3|instruction_register\(8)) # (!\inst3|instruction_register\(5))) # (!\inst3|Mux239~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|Mux234~6_combout\,
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux234~7_combout\);

-- Location: LCCOMB_X29_Y7_N8
\inst3|REGISTER_A[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(5) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|REGISTER_A\(5)))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|Mux234~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mux234~7_combout\,
	datac => \inst3|REGISTER_A\(5),
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(5));

-- Location: FF_X31_Y7_N21
\inst3|generic_register_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux9~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(7));

-- Location: LCCOMB_X29_Y9_N12
\inst3|segment_offset_l_register[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|segment_offset_l_register[7]~feeder_combout\ = \inst|Mux9~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux9~2_combout\,
	combout => \inst3|segment_offset_l_register[7]~feeder_combout\);

-- Location: FF_X29_Y9_N13
\inst3|segment_offset_l_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|segment_offset_l_register[7]~feeder_combout\,
	ena => \inst3|Mux83~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_l_register\(7));

-- Location: FF_X30_Y9_N23
\inst3|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux9~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(7));

-- Location: FF_X30_Y9_N17
\inst3|stack_pointer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux9~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(7));

-- Location: LCCOMB_X30_Y9_N16
\inst3|Mux236~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux236~0_combout\ = (\inst1|action~4_combout\ & (\inst3|instruction_register\(6) & ((\inst3|instruction_register\(7)) # (\inst3|stack_pointer\(7))))) # (!\inst1|action~4_combout\ & (((\inst3|instruction_register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|instruction_register\(7),
	datac => \inst3|stack_pointer\(7),
	datad => \inst1|action~4_combout\,
	combout => \inst3|Mux236~0_combout\);

-- Location: LCCOMB_X30_Y9_N22
\inst3|Mux236~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux236~1_combout\ = (\inst3|Mux239~0_combout\ & ((\inst3|Mux236~0_combout\ & ((\inst3|tmp\(7)))) # (!\inst3|Mux236~0_combout\ & (\inst3|segment_offset_l_register\(7))))) # (!\inst3|Mux239~0_combout\ & (((\inst3|Mux236~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_offset_l_register\(7),
	datab => \inst3|Mux239~0_combout\,
	datac => \inst3|tmp\(7),
	datad => \inst3|Mux236~0_combout\,
	combout => \inst3|Mux236~1_combout\);

-- Location: FF_X30_Y6_N1
\inst3|generic_register_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux9~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(7));

-- Location: FF_X30_Y7_N27
\inst3|generic_register_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux9~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(7));

-- Location: FF_X31_Y6_N21
\inst3|segment_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux9~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(7));

-- Location: LCCOMB_X30_Y6_N18
\inst3|Mux236~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux236~2_combout\ = (\inst3|instruction_register\(6) & (\inst3|program_counter\(7) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst3|instruction_register\(6),
	datad => \inst3|program_counter\(7),
	combout => \inst3|Mux236~2_combout\);

-- Location: LCCOMB_X31_Y6_N20
\inst3|Mux236~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux236~3_combout\ = (\inst3|Mux235~3_combout\ & ((\inst3|Mux235~4_combout\ & (\inst3|segment_register\(7))) # (!\inst3|Mux235~4_combout\ & ((\inst3|Mux236~2_combout\))))) # (!\inst3|Mux235~3_combout\ & (!\inst3|Mux235~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~3_combout\,
	datab => \inst3|Mux235~4_combout\,
	datac => \inst3|segment_register\(7),
	datad => \inst3|Mux236~2_combout\,
	combout => \inst3|Mux236~3_combout\);

-- Location: LCCOMB_X30_Y7_N26
\inst3|Mux236~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux236~4_combout\ = (\inst3|Mux235~0_combout\ & ((\inst3|Mux236~3_combout\ & (\inst3|generic_register_a\(7))) # (!\inst3|Mux236~3_combout\ & ((\inst3|generic_register_c\(7)))))) # (!\inst3|Mux235~0_combout\ & (((\inst3|Mux236~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~0_combout\,
	datab => \inst3|generic_register_a\(7),
	datac => \inst3|generic_register_c\(7),
	datad => \inst3|Mux236~3_combout\,
	combout => \inst3|Mux236~4_combout\);

-- Location: LCCOMB_X30_Y7_N8
\inst3|Mux236~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux236~5_combout\ = (\inst3|Mux237~2_combout\ & (((\inst3|Mux235~2_combout\)))) # (!\inst3|Mux237~2_combout\ & ((\inst3|Mux235~2_combout\ & (\inst3|Mux236~1_combout\)) # (!\inst3|Mux235~2_combout\ & ((\inst3|Mux236~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux237~2_combout\,
	datab => \inst3|Mux236~1_combout\,
	datac => \inst3|Mux236~4_combout\,
	datad => \inst3|Mux235~2_combout\,
	combout => \inst3|Mux236~5_combout\);

-- Location: LCCOMB_X30_Y7_N14
\inst3|Mux236~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux236~6_combout\ = (\inst3|Mux236~5_combout\ & ((\inst3|generic_register_d\(7)) # ((!\inst3|Mux237~2_combout\)))) # (!\inst3|Mux236~5_combout\ & (((\inst3|generic_register_b\(7) & \inst3|Mux237~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_d\(7),
	datab => \inst3|Mux236~5_combout\,
	datac => \inst3|generic_register_b\(7),
	datad => \inst3|Mux237~2_combout\,
	combout => \inst3|Mux236~6_combout\);

-- Location: LCCOMB_X30_Y7_N18
\inst3|Mux236~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux236~7_combout\ = (\inst3|Mux236~6_combout\ & (((!\inst3|instruction_register\(5)) # (!\inst3|Mux239~0_combout\)) # (!\inst3|instruction_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(8),
	datab => \inst3|Mux239~0_combout\,
	datac => \inst3|Mux236~6_combout\,
	datad => \inst3|instruction_register\(5),
	combout => \inst3|Mux236~7_combout\);

-- Location: LCCOMB_X30_Y7_N20
\inst3|REGISTER_A[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(7) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(7))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux236~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_A\(7),
	datac => \inst3|Mux236~7_combout\,
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(7));

-- Location: LCCOMB_X32_Y6_N12
\inst3|Mux241~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~2_combout\ = (\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & ((\inst3|instruction_register\(5)) # (!\inst3|instruction_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux241~2_combout\);

-- Location: LCCOMB_X36_Y6_N28
\inst3|Mux241~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~3_combout\ = (\inst3|instruction_register\(6) & (\inst3|instruction_register\(8) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~q\,
	datab => \inst3|instruction_register\(6),
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux241~3_combout\);

-- Location: FF_X37_Y8_N31
\inst3|generic_register_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux8~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(8));

-- Location: FF_X35_Y9_N15
\inst3|generic_register_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux8~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(8));

-- Location: FF_X36_Y6_N21
\inst3|generic_register_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux8~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(8));

-- Location: LCCOMB_X31_Y6_N8
\inst3|Mux241~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~6_combout\ = (\inst1|action~4_combout\ & ((\inst3|instruction_register\(7)) # ((\inst3|instruction_register\(5) & \inst3|Mux235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(7),
	datab => \inst3|instruction_register\(5),
	datac => \inst1|action~4_combout\,
	datad => \inst3|Mux235~0_combout\,
	combout => \inst3|Mux241~6_combout\);

-- Location: LCCOMB_X31_Y6_N26
\inst3|Mux241~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~5_combout\ = (!\inst3|Mux235~0_combout\ & (((!\inst3|instruction_register\(8) & !\inst3|instruction_register\(5))) # (!\inst3|Mux239~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|instruction_register\(8),
	datac => \inst3|instruction_register\(5),
	datad => \inst3|Mux235~0_combout\,
	combout => \inst3|Mux241~5_combout\);

-- Location: FF_X36_Y6_N7
\inst3|segment_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux8~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(8));

-- Location: LCCOMB_X36_Y6_N6
\inst3|Mux237~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux237~3_combout\ = (\inst3|Mux241~6_combout\ & (\inst3|Mux241~5_combout\ & (\inst3|segment_register\(8)))) # (!\inst3|Mux241~6_combout\ & (((\inst3|Mux237~2_combout\)) # (!\inst3|Mux241~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~6_combout\,
	datab => \inst3|Mux241~5_combout\,
	datac => \inst3|segment_register\(8),
	datad => \inst3|Mux237~2_combout\,
	combout => \inst3|Mux237~3_combout\);

-- Location: LCCOMB_X36_Y6_N20
\inst3|Mux237~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux237~4_combout\ = (\inst3|Mux235~0_combout\ & ((\inst3|Mux237~3_combout\ & (\inst3|generic_register_a\(8))) # (!\inst3|Mux237~3_combout\ & ((\inst3|generic_register_b\(8)))))) # (!\inst3|Mux235~0_combout\ & (((\inst3|Mux237~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_a\(8),
	datab => \inst3|Mux235~0_combout\,
	datac => \inst3|generic_register_b\(8),
	datad => \inst3|Mux237~3_combout\,
	combout => \inst3|Mux237~4_combout\);

-- Location: LCCOMB_X37_Y8_N30
\inst3|Mux237~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux237~5_combout\ = (\inst3|Mux241~2_combout\ & (\inst3|Mux241~3_combout\)) # (!\inst3|Mux241~2_combout\ & ((\inst3|Mux241~3_combout\ & (\inst3|generic_register_c\(8))) # (!\inst3|Mux241~3_combout\ & ((\inst3|Mux237~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~2_combout\,
	datab => \inst3|Mux241~3_combout\,
	datac => \inst3|generic_register_c\(8),
	datad => \inst3|Mux237~4_combout\,
	combout => \inst3|Mux237~5_combout\);

-- Location: FF_X37_Y8_N25
\inst3|generic_register_d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux8~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(8));

-- Location: LCCOMB_X34_Y9_N14
\inst3|program_counter[7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[7]~30_combout\ = (\inst3|program_counter\(7) & (!\inst3|program_counter[6]~29\)) # (!\inst3|program_counter\(7) & ((\inst3|program_counter[6]~29\) # (GND)))
-- \inst3|program_counter[7]~31\ = CARRY((!\inst3|program_counter[6]~29\) # (!\inst3|program_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(7),
	datad => VCC,
	cin => \inst3|program_counter[6]~29\,
	combout => \inst3|program_counter[7]~30_combout\,
	cout => \inst3|program_counter[7]~31\);

-- Location: LCCOMB_X34_Y9_N16
\inst3|program_counter[8]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[8]~32_combout\ = (\inst3|program_counter\(8) & (\inst3|program_counter[7]~31\ $ (GND))) # (!\inst3|program_counter\(8) & (!\inst3|program_counter[7]~31\ & VCC))
-- \inst3|program_counter[8]~33\ = CARRY((\inst3|program_counter\(8) & !\inst3|program_counter[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(8),
	datad => VCC,
	cin => \inst3|program_counter[7]~31\,
	combout => \inst3|program_counter[8]~32_combout\,
	cout => \inst3|program_counter[8]~33\);

-- Location: FF_X34_Y9_N17
\inst3|program_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[8]~32_combout\,
	asdata => \inst|Mux8~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(8));

-- Location: FF_X36_Y9_N7
\inst3|stack_pointer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux8~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(8));

-- Location: LCCOMB_X36_Y9_N6
\inst3|Mux237~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux237~0_combout\ = (\inst3|Mux239~0_combout\ & (((\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst3|Mux239~0_combout\ & ((\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|stack_pointer\(8)))) # 
-- (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & (\inst3|program_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(8),
	datab => \inst3|Mux239~0_combout\,
	datac => \inst3|stack_pointer\(8),
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux237~0_combout\);

-- Location: FF_X36_Y9_N17
\inst3|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux8~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(8));

-- Location: LCCOMB_X32_Y9_N0
\inst3|Mux83~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~110_combout\ = (\inst3|instruction_register\(7) & (\inst1|state.save_to_register~q\ & (\inst3|instruction_register\(6) & \inst3|Mux83~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(7),
	datab => \inst1|state.save_to_register~q\,
	datac => \inst3|instruction_register\(6),
	datad => \inst3|Mux83~21_combout\,
	combout => \inst3|Mux83~110_combout\);

-- Location: FF_X32_Y9_N15
\inst3|segment_offset_h_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst3|Mux83~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_h_register\(0));

-- Location: LCCOMB_X36_Y9_N18
\inst3|Mux237~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux237~1_combout\ = (\inst3|Mux237~0_combout\ & ((\inst3|tmp\(8)) # ((!\inst3|Mux239~0_combout\)))) # (!\inst3|Mux237~0_combout\ & (((\inst3|Mux239~0_combout\ & \inst3|segment_offset_h_register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux237~0_combout\,
	datab => \inst3|tmp\(8),
	datac => \inst3|Mux239~0_combout\,
	datad => \inst3|segment_offset_h_register\(0),
	combout => \inst3|Mux237~1_combout\);

-- Location: LCCOMB_X37_Y8_N24
\inst3|Mux237~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux237~6_combout\ = (\inst3|Mux237~5_combout\ & (((\inst3|generic_register_d\(8))) # (!\inst3|Mux241~2_combout\))) # (!\inst3|Mux237~5_combout\ & (\inst3|Mux241~2_combout\ & ((\inst3|Mux237~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux237~5_combout\,
	datab => \inst3|Mux241~2_combout\,
	datac => \inst3|generic_register_d\(8),
	datad => \inst3|Mux237~1_combout\,
	combout => \inst3|Mux237~6_combout\);

-- Location: LCCOMB_X37_Y8_N14
\inst3|Mux237~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux237~7_combout\ = (\inst3|Mux237~6_combout\) # ((\inst3|instruction_register\(8) & (\inst3|instruction_register\(6) & \inst3|Mux239~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux237~6_combout\,
	datab => \inst3|instruction_register\(8),
	datac => \inst3|instruction_register\(6),
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux237~7_combout\);

-- Location: LCCOMB_X37_Y8_N26
\inst3|REGISTER_A[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(8) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(8))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux237~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(8),
	datab => \inst3|Mux237~7_combout\,
	datac => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(8));

-- Location: LCCOMB_X36_Y9_N28
\inst3|stack_pointer[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|stack_pointer[11]~feeder_combout\ = \inst|Mux5~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux5~4_combout\,
	combout => \inst3|stack_pointer[11]~feeder_combout\);

-- Location: FF_X36_Y9_N29
\inst3|stack_pointer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|stack_pointer[11]~feeder_combout\,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(11));

-- Location: FF_X36_Y7_N3
\inst3|tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux5~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(11));

-- Location: FF_X32_Y9_N17
\inst3|segment_offset_h_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux13~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_h_register\(3));

-- Location: LCCOMB_X34_Y9_N18
\inst3|program_counter[9]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[9]~34_combout\ = (\inst3|program_counter\(9) & (!\inst3|program_counter[8]~33\)) # (!\inst3|program_counter\(9) & ((\inst3|program_counter[8]~33\) # (GND)))
-- \inst3|program_counter[9]~35\ = CARRY((!\inst3|program_counter[8]~33\) # (!\inst3|program_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(9),
	datad => VCC,
	cin => \inst3|program_counter[8]~33\,
	combout => \inst3|program_counter[9]~34_combout\,
	cout => \inst3|program_counter[9]~35\);

-- Location: LCCOMB_X32_Y10_N24
\inst1|REGISTER_ID_TO_READ_B[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ = (\inst1|state.handle_args_as_registers~q\ & \inst3|instruction_register\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(2),
	combout => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\);

-- Location: LCCOMB_X32_Y10_N30
\inst3|Mux226~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~6_combout\ = (\inst1|state.handle_args_as_registers~q\ & \inst3|instruction_register\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(3),
	combout => \inst3|Mux226~6_combout\);

-- Location: LCCOMB_X32_Y10_N28
\inst1|REGISTER_ID_TO_READ_B[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ = (\inst1|state.handle_args_as_registers~q\ & \inst3|instruction_register\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(0),
	combout => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\);

-- Location: LCCOMB_X32_Y10_N4
\inst3|Mux228~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux228~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (\inst3|Mux226~6_combout\ & (\inst3|Mux226~5_combout\ $ (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datac => \inst3|Mux226~6_combout\,
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux228~0_combout\);

-- Location: CLKCTRL_G16
\inst3|Mux228~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|Mux228~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|Mux228~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y8_N2
\inst3|Mux214~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~2_combout\ = (\inst3|instruction_register\(3) & (\inst3|instruction_register\(2) & \inst1|state.handle_args_as_registers~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(3),
	datab => \inst3|instruction_register\(2),
	datad => \inst1|state.handle_args_as_registers~q\,
	combout => \inst3|Mux214~2_combout\);

-- Location: LCCOMB_X30_Y8_N0
\inst3|Mux215~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux215~0_combout\ = (\inst3|instruction_register\(1) & (\inst3|program_counter\(3) & \inst1|state.handle_args_as_registers~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(1),
	datab => \inst3|program_counter\(3),
	datad => \inst1|state.handle_args_as_registers~q\,
	combout => \inst3|Mux215~0_combout\);

-- Location: LCCOMB_X31_Y10_N2
\inst3|Mux226~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~7_combout\ = (\inst1|state.handle_args_as_registers~q\ & ((\inst3|instruction_register\(0)) # (\inst3|instruction_register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(0),
	datab => \inst3|instruction_register\(3),
	datad => \inst1|state.handle_args_as_registers~q\,
	combout => \inst3|Mux226~7_combout\);

-- Location: LCCOMB_X31_Y11_N0
\inst3|Mux214~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~0_combout\ = (!\inst3|Mux226~7_combout\ & (((!\inst3|Mux226~6_combout\ & !\inst3|instruction_register\(2))) # (!\inst3|Mux226~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|Mux226~6_combout\,
	datac => \inst3|instruction_register\(2),
	datad => \inst3|Mux226~7_combout\,
	combout => \inst3|Mux214~0_combout\);

-- Location: LCCOMB_X31_Y11_N22
\inst3|Mux214~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~1_combout\ = (\inst1|state.handle_args_as_registers~q\ & ((\inst3|instruction_register\(3)) # ((\inst3|instruction_register\(2) & !\inst3|instruction_register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(3),
	datab => \inst3|instruction_register\(2),
	datac => \inst3|instruction_register\(0),
	datad => \inst1|state.handle_args_as_registers~q\,
	combout => \inst3|Mux214~1_combout\);

-- Location: LCCOMB_X30_Y9_N24
\inst3|Mux215~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux215~3_combout\ = (\inst3|Mux226~5_combout\ & (((\inst3|stack_pointer\(3)) # (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)))) # (!\inst3|Mux226~5_combout\ & (\inst3|instruction_register\(3) & ((!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|instruction_register\(3),
	datac => \inst3|stack_pointer\(3),
	datad => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	combout => \inst3|Mux215~3_combout\);

-- Location: LCCOMB_X30_Y9_N10
\inst3|Mux215~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux215~4_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|Mux215~3_combout\ & (\inst3|tmp\(3))) # (!\inst3|Mux215~3_combout\ & ((\inst3|segment_offset_l_register\(3)))))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & 
-- (\inst3|Mux215~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datab => \inst3|Mux215~3_combout\,
	datac => \inst3|tmp\(3),
	datad => \inst3|segment_offset_l_register\(3),
	combout => \inst3|Mux215~4_combout\);

-- Location: LCCOMB_X31_Y8_N12
\inst3|Mux215~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux215~1_combout\ = (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & (((\inst3|Mux226~5_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & ((\inst3|Mux226~5_combout\ & ((\inst3|generic_register_c\(3)))) # (!\inst3|Mux226~5_combout\ & 
-- (!\inst3|generic_register_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_a\(3),
	datab => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datac => \inst3|generic_register_c\(3),
	datad => \inst3|Mux226~5_combout\,
	combout => \inst3|Mux215~1_combout\);

-- Location: LCCOMB_X32_Y8_N8
\inst3|Mux215~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux215~2_combout\ = (\inst3|Mux215~1_combout\ & (((\inst3|generic_register_d\(3))) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\))) # (!\inst3|Mux215~1_combout\ & (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & ((\inst3|generic_register_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux215~1_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datac => \inst3|generic_register_d\(3),
	datad => \inst3|generic_register_b\(3),
	combout => \inst3|Mux215~2_combout\);

-- Location: LCCOMB_X30_Y8_N12
\inst3|Mux215~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux215~5_combout\ = (\inst3|Mux214~1_combout\ & (((\inst3|Mux215~2_combout\ & \inst3|Mux226~7_combout\)))) # (!\inst3|Mux214~1_combout\ & ((\inst3|Mux215~4_combout\) # ((!\inst3|Mux226~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux214~1_combout\,
	datab => \inst3|Mux215~4_combout\,
	datac => \inst3|Mux215~2_combout\,
	datad => \inst3|Mux226~7_combout\,
	combout => \inst3|Mux215~5_combout\);

-- Location: LCCOMB_X30_Y8_N6
\inst3|Mux215~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux215~6_combout\ = (\inst3|Mux214~0_combout\ & ((\inst3|Mux215~5_combout\ & ((\inst3|Mux215~0_combout\))) # (!\inst3|Mux215~5_combout\ & (\inst3|segment_register\(3))))) # (!\inst3|Mux214~0_combout\ & (((\inst3|Mux215~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_register\(3),
	datab => \inst3|Mux215~0_combout\,
	datac => \inst3|Mux214~0_combout\,
	datad => \inst3|Mux215~5_combout\,
	combout => \inst3|Mux215~6_combout\);

-- Location: LCCOMB_X30_Y8_N8
\inst3|Mux215~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux215~7_combout\ = (\inst3|Mux214~2_combout\ & (!\inst3|Mux226~5_combout\ & ((\inst3|flag_register\(3))))) # (!\inst3|Mux214~2_combout\ & (((\inst3|Mux215~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|Mux214~2_combout\,
	datac => \inst3|Mux215~6_combout\,
	datad => \inst3|flag_register\(3),
	combout => \inst3|Mux215~7_combout\);

-- Location: LCCOMB_X30_Y8_N20
\inst3|REGISTER_B[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(3) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(3))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux215~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux228~0clkctrl_outclk\,
	datab => \inst3|REGISTER_B\(3),
	datac => \inst3|Mux215~7_combout\,
	combout => \inst3|REGISTER_B\(3));

-- Location: FF_X30_Y9_N9
\inst3|stack_pointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux12~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(4));

-- Location: LCCOMB_X29_Y9_N16
\inst3|instruction_register[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|instruction_register[4]~feeder_combout\ = \inst|Mux12~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux12~2_combout\,
	combout => \inst3|instruction_register[4]~feeder_combout\);

-- Location: LCCOMB_X31_Y8_N26
\inst3|Mux83~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~108_combout\ = (!\inst3|instruction_register\(6) & (\inst3|Mux83~3_combout\ & (!\inst3|instruction_register\(7) & \inst1|state.save_to_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|Mux83~3_combout\,
	datac => \inst3|instruction_register\(7),
	datad => \inst1|state.save_to_register~q\,
	combout => \inst3|Mux83~108_combout\);

-- Location: FF_X29_Y9_N17
\inst3|instruction_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|instruction_register[4]~feeder_combout\,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(4));

-- Location: LCCOMB_X30_Y9_N8
\inst3|Mux216~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux216~0_combout\ = (\inst3|Mux226~5_combout\ & ((\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\) # ((\inst3|stack_pointer\(4))))) # (!\inst3|Mux226~5_combout\ & (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|instruction_register\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datac => \inst3|stack_pointer\(4),
	datad => \inst3|instruction_register\(4),
	combout => \inst3|Mux216~0_combout\);

-- Location: FF_X30_Y9_N19
\inst3|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux12~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(4));

-- Location: FF_X29_Y9_N11
\inst3|segment_offset_l_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux12~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_l_register\(4));

-- Location: LCCOMB_X30_Y9_N18
\inst3|Mux216~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux216~1_combout\ = (\inst3|Mux216~0_combout\ & (((\inst3|tmp\(4))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\))) # (!\inst3|Mux216~0_combout\ & (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|segment_offset_l_register\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux216~0_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datac => \inst3|tmp\(4),
	datad => \inst3|segment_offset_l_register\(4),
	combout => \inst3|Mux216~1_combout\);

-- Location: FF_X31_Y7_N15
\inst3|generic_register_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Mux12~2_combout\,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(4));

-- Location: FF_X30_Y7_N25
\inst3|generic_register_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux12~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(4));

-- Location: LCCOMB_X31_Y10_N20
\inst3|Mux219~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~1_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(3) & \inst3|instruction_register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst3|instruction_register\(3),
	datad => \inst3|instruction_register\(0),
	combout => \inst3|Mux219~1_combout\);

-- Location: LCCOMB_X30_Y6_N4
\inst3|Mux216~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux216~2_combout\ = (\inst3|instruction_register\(1) & (\inst1|state.handle_args_as_registers~q\ & \inst3|program_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(1),
	datab => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|program_counter\(4),
	combout => \inst3|Mux216~2_combout\);

-- Location: FF_X31_Y6_N15
\inst3|segment_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux12~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(4));

-- Location: LCCOMB_X30_Y6_N10
\inst3|Mux216~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux216~3_combout\ = (\inst3|Mux219~3_combout\ & (\inst3|Mux219~2_combout\ & ((\inst3|segment_register\(4))))) # (!\inst3|Mux219~3_combout\ & (((\inst3|Mux216~2_combout\)) # (!\inst3|Mux219~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~3_combout\,
	datab => \inst3|Mux219~2_combout\,
	datac => \inst3|Mux216~2_combout\,
	datad => \inst3|segment_register\(4),
	combout => \inst3|Mux216~3_combout\);

-- Location: LCCOMB_X35_Y10_N20
\inst3|Mux226~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~2_combout\ = (\inst3|instruction_register\(3) & (!\inst3|instruction_register\(2) & \inst1|state.handle_args_as_registers~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(3),
	datac => \inst3|instruction_register\(2),
	datad => \inst1|state.handle_args_as_registers~q\,
	combout => \inst3|Mux226~2_combout\);

-- Location: FF_X31_Y7_N17
\inst3|generic_register_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux12~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(4));

-- Location: FF_X30_Y7_N31
\inst3|generic_register_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux12~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(4));

-- Location: LCCOMB_X31_Y7_N16
\inst3|Mux216~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux216~4_combout\ = (\inst3|Mux216~3_combout\ & (((\inst3|generic_register_a\(4))) # (!\inst3|Mux226~2_combout\))) # (!\inst3|Mux216~3_combout\ & (\inst3|Mux226~2_combout\ & ((\inst3|generic_register_c\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux216~3_combout\,
	datab => \inst3|Mux226~2_combout\,
	datac => \inst3|generic_register_a\(4),
	datad => \inst3|generic_register_c\(4),
	combout => \inst3|Mux216~4_combout\);

-- Location: LCCOMB_X31_Y11_N30
\inst3|Mux216~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux216~5_combout\ = (\inst3|Mux219~1_combout\ & ((\inst3|generic_register_b\(4)) # ((\inst3|Mux219~0_combout\)))) # (!\inst3|Mux219~1_combout\ & (((\inst3|Mux216~4_combout\ & !\inst3|Mux219~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_b\(4),
	datab => \inst3|Mux219~1_combout\,
	datac => \inst3|Mux216~4_combout\,
	datad => \inst3|Mux219~0_combout\,
	combout => \inst3|Mux216~5_combout\);

-- Location: LCCOMB_X31_Y7_N4
\inst3|Mux216~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux216~6_combout\ = (\inst3|Mux219~0_combout\ & ((\inst3|Mux216~5_combout\ & ((\inst3|generic_register_d\(4)))) # (!\inst3|Mux216~5_combout\ & (\inst3|Mux216~1_combout\)))) # (!\inst3|Mux219~0_combout\ & (((\inst3|Mux216~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~0_combout\,
	datab => \inst3|Mux216~1_combout\,
	datac => \inst3|generic_register_d\(4),
	datad => \inst3|Mux216~5_combout\,
	combout => \inst3|Mux216~6_combout\);

-- Location: LCCOMB_X31_Y7_N2
\inst3|Mux216~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux216~7_combout\ = (\inst3|Mux216~6_combout\) # ((\inst3|instruction_register\(3) & (\inst3|instruction_register\(2) & \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(3),
	datab => \inst3|Mux216~6_combout\,
	datac => \inst3|instruction_register\(2),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux216~7_combout\);

-- Location: LCCOMB_X31_Y7_N30
\inst3|REGISTER_B[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(4) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(4))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux216~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(4),
	datab => \inst3|Mux216~7_combout\,
	datad => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(4));

-- Location: LCCOMB_X32_Y8_N2
\inst|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~3_combout\ = (\inst3|REGISTER_B\(4)) # ((\inst3|REGISTER_B\(7)) # ((\inst3|REGISTER_B\(6)) # (\inst3|REGISTER_B\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(4),
	datab => \inst3|REGISTER_B\(7),
	datac => \inst3|REGISTER_B\(6),
	datad => \inst3|REGISTER_B\(5),
	combout => \inst|Mux6~3_combout\);

-- Location: FF_X32_Y6_N29
\inst3|segment_register[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux2~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(14));

-- Location: LCCOMB_X32_Y6_N16
\inst3|Mux243~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux243~2_combout\ = (\inst3|instruction_register\(14) & (\inst3|instruction_register\(5) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(14),
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(5),
	datad => \inst1|state.handle_arg_as_register~q\,
	combout => \inst3|Mux243~2_combout\);

-- Location: LCCOMB_X32_Y6_N18
\inst3|Mux243~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux243~3_combout\ = (\inst3|Mux241~5_combout\ & ((\inst3|Mux241~6_combout\ & (\inst3|segment_register\(14))) # (!\inst3|Mux241~6_combout\ & ((\inst3|Mux243~2_combout\))))) # (!\inst3|Mux241~5_combout\ & (((!\inst3|Mux241~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~5_combout\,
	datab => \inst3|segment_register\(14),
	datac => \inst3|Mux243~2_combout\,
	datad => \inst3|Mux241~6_combout\,
	combout => \inst3|Mux243~3_combout\);

-- Location: LCCOMB_X35_Y10_N8
\inst3|generic_register_a[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_a[14]~feeder_combout\ = \inst|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	combout => \inst3|generic_register_a[14]~feeder_combout\);

-- Location: FF_X35_Y10_N9
\inst3|generic_register_a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_a[14]~feeder_combout\,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(14));

-- Location: LCCOMB_X35_Y6_N0
\inst3|generic_register_b[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_b[14]~feeder_combout\ = \inst|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux2~1_combout\,
	combout => \inst3|generic_register_b[14]~feeder_combout\);

-- Location: FF_X35_Y6_N1
\inst3|generic_register_b[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_b[14]~feeder_combout\,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(14));

-- Location: LCCOMB_X35_Y6_N30
\inst3|Mux243~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux243~4_combout\ = (\inst3|Mux235~0_combout\ & ((\inst3|Mux243~3_combout\ & (\inst3|generic_register_a\(14))) # (!\inst3|Mux243~3_combout\ & ((\inst3|generic_register_b\(14)))))) # (!\inst3|Mux235~0_combout\ & (\inst3|Mux243~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~0_combout\,
	datab => \inst3|Mux243~3_combout\,
	datac => \inst3|generic_register_a\(14),
	datad => \inst3|generic_register_b\(14),
	combout => \inst3|Mux243~4_combout\);

-- Location: FF_X32_Y9_N21
\inst3|segment_offset_h_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux10~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_h_register\(6));

-- Location: LCCOMB_X34_Y9_N22
\inst3|program_counter[11]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[11]~38_combout\ = (\inst3|program_counter\(11) & (!\inst3|program_counter[10]~37\)) # (!\inst3|program_counter\(11) & ((\inst3|program_counter[10]~37\) # (GND)))
-- \inst3|program_counter[11]~39\ = CARRY((!\inst3|program_counter[10]~37\) # (!\inst3|program_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(11),
	datad => VCC,
	cin => \inst3|program_counter[10]~37\,
	combout => \inst3|program_counter[11]~38_combout\,
	cout => \inst3|program_counter[11]~39\);

-- Location: LCCOMB_X34_Y9_N24
\inst3|program_counter[12]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[12]~40_combout\ = (\inst3|program_counter\(12) & (\inst3|program_counter[11]~39\ $ (GND))) # (!\inst3|program_counter\(12) & (!\inst3|program_counter[11]~39\ & VCC))
-- \inst3|program_counter[12]~41\ = CARRY((\inst3|program_counter\(12) & !\inst3|program_counter[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(12),
	datad => VCC,
	cin => \inst3|program_counter[11]~39\,
	combout => \inst3|program_counter[12]~40_combout\,
	cout => \inst3|program_counter[12]~41\);

-- Location: FF_X37_Y8_N9
\inst3|generic_register_d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux4~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(12));

-- Location: FF_X37_Y8_N23
\inst3|generic_register_c[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux4~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(12));

-- Location: LCCOMB_X32_Y8_N26
\inst3|generic_register_b[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_b[12]~feeder_combout\ = \inst|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux4~1_combout\,
	combout => \inst3|generic_register_b[12]~feeder_combout\);

-- Location: FF_X32_Y8_N27
\inst3|generic_register_b[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_b[12]~feeder_combout\,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(12));

-- Location: FF_X31_Y6_N23
\inst3|segment_register[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux4~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(12));

-- Location: LCCOMB_X31_Y10_N12
\inst3|Mux226~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~4_combout\ = (\inst1|state.handle_args_as_registers~q\ & ((\inst3|instruction_register\(2)) # ((\inst3|instruction_register\(0) & \inst3|instruction_register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(2),
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(0),
	datad => \inst3|instruction_register\(3),
	combout => \inst3|Mux226~4_combout\);

-- Location: FF_X35_Y8_N21
\inst3|instruction_register[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|Mux4~1_combout\,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(12));

-- Location: LCCOMB_X31_Y10_N0
\inst3|Mux224~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux224~2_combout\ = (\inst3|instruction_register\(0) & (\inst1|state.handle_args_as_registers~q\ & \inst3|instruction_register\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(0),
	datab => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(12),
	combout => \inst3|Mux224~2_combout\);

-- Location: LCCOMB_X31_Y10_N16
\inst3|Mux226~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~3_combout\ = ((!\inst3|instruction_register\(3) & ((!\inst3|instruction_register\(0)) # (!\inst3|instruction_register\(2))))) # (!\inst1|state.handle_args_as_registers~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(2),
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(3),
	datad => \inst3|instruction_register\(0),
	combout => \inst3|Mux226~3_combout\);

-- Location: LCCOMB_X31_Y10_N14
\inst3|Mux224~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux224~3_combout\ = (\inst3|Mux226~4_combout\ & (\inst3|segment_register\(12) & ((\inst3|Mux226~3_combout\)))) # (!\inst3|Mux226~4_combout\ & (((\inst3|Mux224~2_combout\) # (!\inst3|Mux226~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_register\(12),
	datab => \inst3|Mux226~4_combout\,
	datac => \inst3|Mux224~2_combout\,
	datad => \inst3|Mux226~3_combout\,
	combout => \inst3|Mux224~3_combout\);

-- Location: LCCOMB_X35_Y10_N0
\inst3|generic_register_a[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_a[12]~feeder_combout\ = \inst|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux4~1_combout\,
	combout => \inst3|generic_register_a[12]~feeder_combout\);

-- Location: FF_X35_Y10_N1
\inst3|generic_register_a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_a[12]~feeder_combout\,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(12));

-- Location: LCCOMB_X35_Y10_N26
\inst3|Mux224~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux224~4_combout\ = (\inst3|Mux226~2_combout\ & ((\inst3|Mux224~3_combout\ & ((\inst3|generic_register_a\(12)))) # (!\inst3|Mux224~3_combout\ & (\inst3|generic_register_b\(12))))) # (!\inst3|Mux226~2_combout\ & (((\inst3|Mux224~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_b\(12),
	datab => \inst3|Mux226~2_combout\,
	datac => \inst3|Mux224~3_combout\,
	datad => \inst3|generic_register_a\(12),
	combout => \inst3|Mux224~4_combout\);

-- Location: LCCOMB_X36_Y10_N22
\inst3|Mux224~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux224~5_combout\ = (\inst3|Mux226~0_combout\ & (((\inst3|Mux226~1_combout\)))) # (!\inst3|Mux226~0_combout\ & ((\inst3|Mux226~1_combout\ & (\inst3|generic_register_c\(12))) # (!\inst3|Mux226~1_combout\ & ((\inst3|Mux224~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_c\(12),
	datab => \inst3|Mux226~0_combout\,
	datac => \inst3|Mux224~4_combout\,
	datad => \inst3|Mux226~1_combout\,
	combout => \inst3|Mux224~5_combout\);

-- Location: FF_X32_Y9_N29
\inst3|segment_offset_h_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux12~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_h_register\(4));

-- Location: LCCOMB_X32_Y9_N28
\inst3|Mux224~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux224~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (((\inst3|segment_offset_h_register\(4)) # (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (\inst3|program_counter\(12) & 
-- ((!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(12),
	datab => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datac => \inst3|segment_offset_h_register\(4),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux224~0_combout\);

-- Location: LCCOMB_X36_Y9_N20
\inst3|stack_pointer[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|stack_pointer[12]~feeder_combout\ = \inst|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux4~1_combout\,
	combout => \inst3|stack_pointer[12]~feeder_combout\);

-- Location: FF_X36_Y9_N21
\inst3|stack_pointer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|stack_pointer[12]~feeder_combout\,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(12));

-- Location: FF_X36_Y9_N27
\inst3|tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux4~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(12));

-- Location: LCCOMB_X36_Y9_N26
\inst3|Mux224~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux224~1_combout\ = (\inst3|Mux224~0_combout\ & (((\inst3|tmp\(12)) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst3|Mux224~0_combout\ & (\inst3|stack_pointer\(12) & ((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux224~0_combout\,
	datab => \inst3|stack_pointer\(12),
	datac => \inst3|tmp\(12),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux224~1_combout\);

-- Location: LCCOMB_X36_Y10_N16
\inst3|Mux224~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux224~6_combout\ = (\inst3|Mux224~5_combout\ & ((\inst3|generic_register_d\(12)) # ((!\inst3|Mux226~0_combout\)))) # (!\inst3|Mux224~5_combout\ & (((\inst3|Mux224~1_combout\ & \inst3|Mux226~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_d\(12),
	datab => \inst3|Mux224~5_combout\,
	datac => \inst3|Mux224~1_combout\,
	datad => \inst3|Mux226~0_combout\,
	combout => \inst3|Mux224~6_combout\);

-- Location: LCCOMB_X36_Y10_N26
\inst3|Mux224~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux224~7_combout\ = (\inst3|Mux224~6_combout\) # ((\inst3|instruction_register\(2) & (\inst3|Mux226~5_combout\ & \inst3|instruction_register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(2),
	datab => \inst3|Mux226~5_combout\,
	datac => \inst3|Mux224~6_combout\,
	datad => \inst3|instruction_register\(3),
	combout => \inst3|Mux224~7_combout\);

-- Location: LCCOMB_X36_Y10_N18
\inst3|REGISTER_B[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(12) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(12))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux224~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_B\(12),
	datac => \inst3|Mux224~7_combout\,
	datad => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(12));

-- Location: FF_X30_Y9_N27
\inst3|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux10~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(6));

-- Location: FF_X30_Y9_N29
\inst3|stack_pointer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux10~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(6));

-- Location: LCCOMB_X30_Y9_N28
\inst3|Mux235~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~5_combout\ = (\inst3|instruction_register\(6) & ((\inst3|instruction_register\(7)) # ((\inst3|stack_pointer\(6)) # (!\inst1|action~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|instruction_register\(7),
	datac => \inst3|stack_pointer\(6),
	datad => \inst1|action~4_combout\,
	combout => \inst3|Mux235~5_combout\);

-- Location: LCCOMB_X29_Y7_N24
\inst3|segment_offset_l_register[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|segment_offset_l_register[6]~feeder_combout\ = \inst|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux10~1_combout\,
	combout => \inst3|segment_offset_l_register[6]~feeder_combout\);

-- Location: FF_X29_Y7_N25
\inst3|segment_offset_l_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|segment_offset_l_register[6]~feeder_combout\,
	ena => \inst3|Mux83~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_l_register\(6));

-- Location: LCCOMB_X29_Y7_N6
\inst3|Mux235~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~6_combout\ = (\inst3|Mux239~0_combout\ & ((\inst3|Mux235~5_combout\ & (\inst3|tmp\(6))) # (!\inst3|Mux235~5_combout\ & ((\inst3|segment_offset_l_register\(6)))))) # (!\inst3|Mux239~0_combout\ & (((\inst3|Mux235~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|tmp\(6),
	datac => \inst3|Mux235~5_combout\,
	datad => \inst3|segment_offset_l_register\(6),
	combout => \inst3|Mux235~6_combout\);

-- Location: FF_X30_Y7_N29
\inst3|generic_register_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux10~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(6));

-- Location: FF_X31_Y7_N27
\inst3|generic_register_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux10~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(6));

-- Location: FF_X30_Y7_N3
\inst3|generic_register_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux10~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(6));

-- Location: LCCOMB_X31_Y6_N6
\inst3|Mux235~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~7_combout\ = (\inst3|instruction_register\(6) & (\inst3|program_counter\(6) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|program_counter\(6),
	combout => \inst3|Mux235~7_combout\);

-- Location: FF_X31_Y6_N17
\inst3|segment_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux10~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(6));

-- Location: LCCOMB_X31_Y6_N16
\inst3|Mux235~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~8_combout\ = (\inst3|Mux235~3_combout\ & ((\inst3|Mux235~4_combout\ & ((\inst3|segment_register\(6)))) # (!\inst3|Mux235~4_combout\ & (\inst3|Mux235~7_combout\)))) # (!\inst3|Mux235~3_combout\ & (((!\inst3|Mux235~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~3_combout\,
	datab => \inst3|Mux235~7_combout\,
	datac => \inst3|segment_register\(6),
	datad => \inst3|Mux235~4_combout\,
	combout => \inst3|Mux235~8_combout\);

-- Location: LCCOMB_X30_Y7_N2
\inst3|Mux235~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~9_combout\ = (\inst3|Mux235~0_combout\ & ((\inst3|Mux235~8_combout\ & (\inst3|generic_register_a\(6))) # (!\inst3|Mux235~8_combout\ & ((\inst3|generic_register_c\(6)))))) # (!\inst3|Mux235~0_combout\ & (((\inst3|Mux235~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~0_combout\,
	datab => \inst3|generic_register_a\(6),
	datac => \inst3|generic_register_c\(6),
	datad => \inst3|Mux235~8_combout\,
	combout => \inst3|Mux235~9_combout\);

-- Location: LCCOMB_X30_Y7_N28
\inst3|Mux235~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~10_combout\ = (\inst3|Mux237~2_combout\ & ((\inst3|Mux235~2_combout\) # ((\inst3|generic_register_b\(6))))) # (!\inst3|Mux237~2_combout\ & (!\inst3|Mux235~2_combout\ & ((\inst3|Mux235~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux237~2_combout\,
	datab => \inst3|Mux235~2_combout\,
	datac => \inst3|generic_register_b\(6),
	datad => \inst3|Mux235~9_combout\,
	combout => \inst3|Mux235~10_combout\);

-- Location: FF_X29_Y7_N17
\inst3|generic_register_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux10~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(6));

-- Location: LCCOMB_X29_Y7_N16
\inst3|Mux235~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~11_combout\ = (\inst3|Mux235~10_combout\ & (((\inst3|generic_register_d\(6)) # (!\inst3|Mux235~2_combout\)))) # (!\inst3|Mux235~10_combout\ & (\inst3|Mux235~6_combout\ & ((\inst3|Mux235~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~6_combout\,
	datab => \inst3|Mux235~10_combout\,
	datac => \inst3|generic_register_d\(6),
	datad => \inst3|Mux235~2_combout\,
	combout => \inst3|Mux235~11_combout\);

-- Location: LCCOMB_X29_Y7_N22
\inst3|Mux235~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux235~12_combout\ = (\inst3|Mux235~11_combout\) # ((\inst3|Mux239~0_combout\ & (\inst3|instruction_register\(5) & \inst3|instruction_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|instruction_register\(5),
	datac => \inst3|Mux235~11_combout\,
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux235~12_combout\);

-- Location: LCCOMB_X29_Y7_N30
\inst3|REGISTER_A[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(6) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(6))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux235~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(6),
	datac => \inst3|Mux235~12_combout\,
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(6));

-- Location: FF_X36_Y8_N19
\inst3|generic_register_d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Mux7~4_combout\,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(9));

-- Location: FF_X36_Y8_N1
\inst3|generic_register_c[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux7~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(9));

-- Location: FF_X36_Y6_N23
\inst3|segment_register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux7~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(9));

-- Location: FF_X35_Y9_N1
\inst3|instruction_register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux7~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(9));

-- Location: LCCOMB_X36_Y6_N24
\inst3|Mux238~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux238~2_combout\ = (\inst3|instruction_register\(5) & (\inst3|instruction_register\(9) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~q\,
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(9),
	combout => \inst3|Mux238~2_combout\);

-- Location: LCCOMB_X36_Y6_N22
\inst3|Mux238~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux238~3_combout\ = (\inst3|Mux241~6_combout\ & (\inst3|Mux241~5_combout\ & (\inst3|segment_register\(9)))) # (!\inst3|Mux241~6_combout\ & (((\inst3|Mux238~2_combout\)) # (!\inst3|Mux241~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~6_combout\,
	datab => \inst3|Mux241~5_combout\,
	datac => \inst3|segment_register\(9),
	datad => \inst3|Mux238~2_combout\,
	combout => \inst3|Mux238~3_combout\);

-- Location: FF_X35_Y9_N31
\inst3|generic_register_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux7~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(9));

-- Location: LCCOMB_X36_Y6_N0
\inst3|generic_register_b[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_b[9]~feeder_combout\ = \inst|Mux7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux7~4_combout\,
	combout => \inst3|generic_register_b[9]~feeder_combout\);

-- Location: FF_X36_Y6_N1
\inst3|generic_register_b[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_b[9]~feeder_combout\,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(9));

-- Location: LCCOMB_X36_Y6_N26
\inst3|Mux238~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux238~4_combout\ = (\inst3|Mux238~3_combout\ & ((\inst3|generic_register_a\(9)) # ((!\inst3|Mux235~0_combout\)))) # (!\inst3|Mux238~3_combout\ & (((\inst3|Mux235~0_combout\ & \inst3|generic_register_b\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux238~3_combout\,
	datab => \inst3|generic_register_a\(9),
	datac => \inst3|Mux235~0_combout\,
	datad => \inst3|generic_register_b\(9),
	combout => \inst3|Mux238~4_combout\);

-- Location: FF_X32_Y10_N17
\inst3|segment_offset_h_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux15~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_h_register\(1));

-- Location: LCCOMB_X34_Y10_N18
\inst3|Mux238~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux238~0_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & (((\inst3|Mux239~0_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|Mux239~0_combout\ & (\inst3|segment_offset_h_register\(1))) # (!\inst3|Mux239~0_combout\ & 
-- ((\inst3|program_counter\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_offset_h_register\(1),
	datab => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datac => \inst3|Mux239~0_combout\,
	datad => \inst3|program_counter\(9),
	combout => \inst3|Mux238~0_combout\);

-- Location: FF_X34_Y10_N17
\inst3|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux7~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(9));

-- Location: LCCOMB_X36_Y10_N24
\inst3|stack_pointer[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|stack_pointer[9]~feeder_combout\ = \inst|Mux7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux7~4_combout\,
	combout => \inst3|stack_pointer[9]~feeder_combout\);

-- Location: FF_X36_Y10_N25
\inst3|stack_pointer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|stack_pointer[9]~feeder_combout\,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(9));

-- Location: LCCOMB_X34_Y10_N16
\inst3|Mux238~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux238~1_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|Mux238~0_combout\ & (\inst3|tmp\(9))) # (!\inst3|Mux238~0_combout\ & ((\inst3|stack_pointer\(9)))))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & 
-- (\inst3|Mux238~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datab => \inst3|Mux238~0_combout\,
	datac => \inst3|tmp\(9),
	datad => \inst3|stack_pointer\(9),
	combout => \inst3|Mux238~1_combout\);

-- Location: LCCOMB_X37_Y6_N16
\inst3|Mux238~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux238~5_combout\ = (\inst3|Mux241~2_combout\ & (((\inst3|Mux241~3_combout\) # (\inst3|Mux238~1_combout\)))) # (!\inst3|Mux241~2_combout\ & (\inst3|Mux238~4_combout\ & (!\inst3|Mux241~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux238~4_combout\,
	datab => \inst3|Mux241~2_combout\,
	datac => \inst3|Mux241~3_combout\,
	datad => \inst3|Mux238~1_combout\,
	combout => \inst3|Mux238~5_combout\);

-- Location: LCCOMB_X37_Y6_N2
\inst3|Mux238~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux238~6_combout\ = (\inst3|Mux238~5_combout\ & ((\inst3|generic_register_d\(9)) # ((!\inst3|Mux241~3_combout\)))) # (!\inst3|Mux238~5_combout\ & (((\inst3|generic_register_c\(9) & \inst3|Mux241~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_d\(9),
	datab => \inst3|generic_register_c\(9),
	datac => \inst3|Mux238~5_combout\,
	datad => \inst3|Mux241~3_combout\,
	combout => \inst3|Mux238~6_combout\);

-- Location: LCCOMB_X37_Y6_N4
\inst3|Mux238~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux238~7_combout\ = (\inst3|Mux238~6_combout\ & (((!\inst3|instruction_register\(6)) # (!\inst3|instruction_register\(8))) # (!\inst3|Mux239~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|instruction_register\(8),
	datac => \inst3|Mux238~6_combout\,
	datad => \inst3|instruction_register\(6),
	combout => \inst3|Mux238~7_combout\);

-- Location: LCCOMB_X37_Y6_N22
\inst3|REGISTER_A[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(9) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|REGISTER_A\(9)))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|Mux238~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux238~7_combout\,
	datac => \inst3|REGISTER_A\(9),
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(9));

-- Location: FF_X37_Y8_N13
\inst3|generic_register_c[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux6~13_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(10));

-- Location: FF_X35_Y8_N31
\inst3|instruction_register[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|Mux6~13_combout\,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(10));

-- Location: LCCOMB_X36_Y6_N8
\inst3|Mux239~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux239~3_combout\ = (\inst3|instruction_register\(5) & (\inst3|instruction_register\(10) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~q\,
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(10),
	combout => \inst3|Mux239~3_combout\);

-- Location: LCCOMB_X36_Y6_N2
\inst3|segment_register[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|segment_register[10]~feeder_combout\ = \inst|Mux6~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux6~13_combout\,
	combout => \inst3|segment_register[10]~feeder_combout\);

-- Location: FF_X36_Y6_N3
\inst3|segment_register[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|segment_register[10]~feeder_combout\,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(10));

-- Location: LCCOMB_X36_Y6_N18
\inst3|Mux239~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux239~4_combout\ = (\inst3|Mux241~5_combout\ & ((\inst3|Mux241~6_combout\ & ((\inst3|segment_register\(10)))) # (!\inst3|Mux241~6_combout\ & (\inst3|Mux239~3_combout\)))) # (!\inst3|Mux241~5_combout\ & (((!\inst3|Mux241~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~3_combout\,
	datab => \inst3|segment_register\(10),
	datac => \inst3|Mux241~5_combout\,
	datad => \inst3|Mux241~6_combout\,
	combout => \inst3|Mux239~4_combout\);

-- Location: FF_X36_Y6_N17
\inst3|generic_register_b[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux6~13_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(10));

-- Location: LCCOMB_X36_Y6_N16
\inst3|Mux239~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux239~5_combout\ = (\inst3|Mux239~4_combout\ & ((\inst3|generic_register_a\(10)) # ((!\inst3|Mux235~0_combout\)))) # (!\inst3|Mux239~4_combout\ & (((\inst3|generic_register_b\(10) & \inst3|Mux235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_a\(10),
	datab => \inst3|Mux239~4_combout\,
	datac => \inst3|generic_register_b\(10),
	datad => \inst3|Mux235~0_combout\,
	combout => \inst3|Mux239~5_combout\);

-- Location: LCCOMB_X37_Y8_N12
\inst3|Mux239~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux239~6_combout\ = (\inst3|Mux241~2_combout\ & (\inst3|Mux241~3_combout\)) # (!\inst3|Mux241~2_combout\ & ((\inst3|Mux241~3_combout\ & (\inst3|generic_register_c\(10))) # (!\inst3|Mux241~3_combout\ & ((\inst3|Mux239~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~2_combout\,
	datab => \inst3|Mux241~3_combout\,
	datac => \inst3|generic_register_c\(10),
	datad => \inst3|Mux239~5_combout\,
	combout => \inst3|Mux239~6_combout\);

-- Location: FF_X32_Y10_N27
\inst3|segment_offset_h_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_h_register\(2));

-- Location: LCCOMB_X32_Y10_N14
\inst3|Mux239~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux239~1_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & (((\inst3|Mux239~0_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|Mux239~0_combout\ & (\inst3|segment_offset_h_register\(2))) # (!\inst3|Mux239~0_combout\ & 
-- ((\inst3|program_counter\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_offset_h_register\(2),
	datab => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datac => \inst3|Mux239~0_combout\,
	datad => \inst3|program_counter\(10),
	combout => \inst3|Mux239~1_combout\);

-- Location: FF_X34_Y10_N13
\inst3|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux6~13_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(10));

-- Location: FF_X34_Y10_N11
\inst3|stack_pointer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux6~13_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(10));

-- Location: LCCOMB_X34_Y10_N12
\inst3|Mux239~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux239~2_combout\ = (\inst3|Mux239~1_combout\ & (((\inst3|tmp\(10))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\))) # (!\inst3|Mux239~1_combout\ & (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|stack_pointer\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~1_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datac => \inst3|tmp\(10),
	datad => \inst3|stack_pointer\(10),
	combout => \inst3|Mux239~2_combout\);

-- Location: FF_X35_Y8_N13
\inst3|generic_register_d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux6~13_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(10));

-- Location: LCCOMB_X37_Y8_N2
\inst3|Mux239~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux239~7_combout\ = (\inst3|Mux239~6_combout\ & (((\inst3|generic_register_d\(10)) # (!\inst3|Mux241~2_combout\)))) # (!\inst3|Mux239~6_combout\ & (\inst3|Mux239~2_combout\ & (\inst3|Mux241~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~6_combout\,
	datab => \inst3|Mux239~2_combout\,
	datac => \inst3|Mux241~2_combout\,
	datad => \inst3|generic_register_d\(10),
	combout => \inst3|Mux239~7_combout\);

-- Location: LCCOMB_X37_Y8_N28
\inst3|Mux239~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux239~8_combout\ = (\inst3|Mux239~7_combout\) # ((\inst3|instruction_register\(8) & (\inst3|instruction_register\(6) & \inst3|Mux239~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~7_combout\,
	datab => \inst3|instruction_register\(8),
	datac => \inst3|instruction_register\(6),
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux239~8_combout\);

-- Location: LCCOMB_X37_Y8_N4
\inst3|REGISTER_A[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(10) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|REGISTER_A\(10)))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|Mux239~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux245~0clkctrl_outclk\,
	datab => \inst3|Mux239~8_combout\,
	datac => \inst3|REGISTER_A\(10),
	combout => \inst3|REGISTER_A\(10));

-- Location: LCCOMB_X34_Y6_N24
\inst3|Mux241~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~4_combout\ = (\inst3|instruction_register\(5) & (\inst3|instruction_register\(12) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~q\,
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(12),
	combout => \inst3|Mux241~4_combout\);

-- Location: LCCOMB_X31_Y6_N22
\inst3|Mux241~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~7_combout\ = (\inst3|Mux241~5_combout\ & ((\inst3|Mux241~6_combout\ & (\inst3|segment_register\(12))) # (!\inst3|Mux241~6_combout\ & ((\inst3|Mux241~4_combout\))))) # (!\inst3|Mux241~5_combout\ & (!\inst3|Mux241~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~5_combout\,
	datab => \inst3|Mux241~6_combout\,
	datac => \inst3|segment_register\(12),
	datad => \inst3|Mux241~4_combout\,
	combout => \inst3|Mux241~7_combout\);

-- Location: LCCOMB_X32_Y8_N20
\inst3|Mux241~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~8_combout\ = (\inst3|Mux241~7_combout\ & (((\inst3|generic_register_a\(12)) # (!\inst3|Mux235~0_combout\)))) # (!\inst3|Mux241~7_combout\ & (\inst3|generic_register_b\(12) & ((\inst3|Mux235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_b\(12),
	datab => \inst3|generic_register_a\(12),
	datac => \inst3|Mux241~7_combout\,
	datad => \inst3|Mux235~0_combout\,
	combout => \inst3|Mux241~8_combout\);

-- Location: LCCOMB_X37_Y8_N22
\inst3|Mux241~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~9_combout\ = (\inst3|Mux241~2_combout\ & (\inst3|Mux241~3_combout\)) # (!\inst3|Mux241~2_combout\ & ((\inst3|Mux241~3_combout\ & (\inst3|generic_register_c\(12))) # (!\inst3|Mux241~3_combout\ & ((\inst3|Mux241~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~2_combout\,
	datab => \inst3|Mux241~3_combout\,
	datac => \inst3|generic_register_c\(12),
	datad => \inst3|Mux241~8_combout\,
	combout => \inst3|Mux241~9_combout\);

-- Location: LCCOMB_X32_Y9_N2
\inst3|Mux241~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~0_combout\ = (\inst3|Mux239~0_combout\ & ((\inst3|segment_offset_h_register\(4)) # ((\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst3|Mux239~0_combout\ & (((\inst3|program_counter\(12) & 
-- !\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|segment_offset_h_register\(4),
	datac => \inst3|program_counter\(12),
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux241~0_combout\);

-- Location: LCCOMB_X36_Y9_N8
\inst3|Mux241~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~1_combout\ = (\inst3|Mux241~0_combout\ & ((\inst3|tmp\(12)) # ((!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst3|Mux241~0_combout\ & (((\inst3|stack_pointer\(12) & \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tmp\(12),
	datab => \inst3|stack_pointer\(12),
	datac => \inst3|Mux241~0_combout\,
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux241~1_combout\);

-- Location: LCCOMB_X37_Y8_N8
\inst3|Mux241~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~10_combout\ = (\inst3|Mux241~9_combout\ & (((\inst3|generic_register_d\(12))) # (!\inst3|Mux241~2_combout\))) # (!\inst3|Mux241~9_combout\ & (\inst3|Mux241~2_combout\ & ((\inst3|Mux241~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~9_combout\,
	datab => \inst3|Mux241~2_combout\,
	datac => \inst3|generic_register_d\(12),
	datad => \inst3|Mux241~1_combout\,
	combout => \inst3|Mux241~10_combout\);

-- Location: LCCOMB_X37_Y8_N6
\inst3|Mux241~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux241~11_combout\ = (\inst3|Mux241~10_combout\) # ((\inst3|Mux239~0_combout\ & (\inst3|instruction_register\(6) & \inst3|instruction_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|instruction_register\(6),
	datac => \inst3|Mux241~10_combout\,
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux241~11_combout\);

-- Location: LCCOMB_X37_Y7_N14
\inst3|REGISTER_A[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(12) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|REGISTER_A\(12)))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|Mux241~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mux241~11_combout\,
	datac => \inst3|REGISTER_A\(12),
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(12));

-- Location: FF_X34_Y10_N31
\inst3|tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux1~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(15));

-- Location: FF_X32_Y9_N9
\inst3|segment_offset_h_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux9~2_combout\,
	sload => VCC,
	ena => \inst3|Mux83~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_h_register\(7));

-- Location: LCCOMB_X34_Y9_N28
\inst3|program_counter[14]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[14]~45_combout\ = (\inst3|program_counter\(14) & (\inst3|program_counter[13]~44\ $ (GND))) # (!\inst3|program_counter\(14) & (!\inst3|program_counter[13]~44\ & VCC))
-- \inst3|program_counter[14]~46\ = CARRY((\inst3|program_counter\(14) & !\inst3|program_counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(14),
	datad => VCC,
	cin => \inst3|program_counter[13]~44\,
	combout => \inst3|program_counter[14]~45_combout\,
	cout => \inst3|program_counter[14]~46\);

-- Location: LCCOMB_X34_Y9_N30
\inst3|program_counter[15]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[15]~47_combout\ = \inst3|program_counter\(15) $ (\inst3|program_counter[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(15),
	cin => \inst3|program_counter[14]~46\,
	combout => \inst3|program_counter[15]~47_combout\);

-- Location: FF_X34_Y9_N31
\inst3|program_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[15]~47_combout\,
	asdata => \inst|Mux1~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(15));

-- Location: FF_X34_Y10_N21
\inst3|stack_pointer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux1~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(15));

-- Location: LCCOMB_X32_Y9_N18
\inst3|Mux244~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux244~0_combout\ = (\inst3|Mux239~0_combout\ & (((\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst3|Mux239~0_combout\ & ((\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|stack_pointer\(15)))) # 
-- (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & (\inst3|program_counter\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|program_counter\(15),
	datac => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datad => \inst3|stack_pointer\(15),
	combout => \inst3|Mux244~0_combout\);

-- Location: LCCOMB_X32_Y9_N8
\inst3|Mux244~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux244~1_combout\ = (\inst3|Mux239~0_combout\ & ((\inst3|Mux244~0_combout\ & (\inst3|tmp\(15))) # (!\inst3|Mux244~0_combout\ & ((\inst3|segment_offset_h_register\(7)))))) # (!\inst3|Mux239~0_combout\ & (((\inst3|Mux244~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|tmp\(15),
	datac => \inst3|segment_offset_h_register\(7),
	datad => \inst3|Mux244~0_combout\,
	combout => \inst3|Mux244~1_combout\);

-- Location: LCCOMB_X32_Y6_N0
\inst3|Mux244~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux244~2_combout\ = (\inst3|instruction_register\(5) & (\inst3|instruction_register\(15) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(15),
	combout => \inst3|Mux244~2_combout\);

-- Location: FF_X32_Y6_N21
\inst3|segment_register[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux1~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(15));

-- Location: LCCOMB_X32_Y6_N20
\inst3|Mux244~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux244~3_combout\ = (\inst3|Mux241~5_combout\ & ((\inst3|Mux241~6_combout\ & ((\inst3|segment_register\(15)))) # (!\inst3|Mux241~6_combout\ & (\inst3|Mux244~2_combout\)))) # (!\inst3|Mux241~5_combout\ & (((!\inst3|Mux241~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~5_combout\,
	datab => \inst3|Mux244~2_combout\,
	datac => \inst3|segment_register\(15),
	datad => \inst3|Mux241~6_combout\,
	combout => \inst3|Mux244~3_combout\);

-- Location: LCCOMB_X29_Y10_N24
\inst3|generic_register_a[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_a[15]~feeder_combout\ = \inst|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux1~1_combout\,
	combout => \inst3|generic_register_a[15]~feeder_combout\);

-- Location: FF_X29_Y10_N25
\inst3|generic_register_a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_a[15]~feeder_combout\,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(15));

-- Location: FF_X35_Y6_N15
\inst3|generic_register_b[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux1~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(15));

-- Location: LCCOMB_X35_Y6_N14
\inst3|Mux244~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux244~4_combout\ = (\inst3|Mux244~3_combout\ & ((\inst3|generic_register_a\(15)) # ((!\inst3|Mux235~0_combout\)))) # (!\inst3|Mux244~3_combout\ & (((\inst3|generic_register_b\(15) & \inst3|Mux235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux244~3_combout\,
	datab => \inst3|generic_register_a\(15),
	datac => \inst3|generic_register_b\(15),
	datad => \inst3|Mux235~0_combout\,
	combout => \inst3|Mux244~4_combout\);

-- Location: FF_X35_Y6_N17
\inst3|generic_register_c[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux1~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(15));

-- Location: LCCOMB_X35_Y6_N16
\inst3|Mux244~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux244~5_combout\ = (\inst3|Mux241~2_combout\ & (((\inst3|Mux241~3_combout\)))) # (!\inst3|Mux241~2_combout\ & ((\inst3|Mux241~3_combout\ & ((\inst3|generic_register_c\(15)))) # (!\inst3|Mux241~3_combout\ & (\inst3|Mux244~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~2_combout\,
	datab => \inst3|Mux244~4_combout\,
	datac => \inst3|generic_register_c\(15),
	datad => \inst3|Mux241~3_combout\,
	combout => \inst3|Mux244~5_combout\);

-- Location: FF_X35_Y10_N3
\inst3|generic_register_d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Mux1~1_combout\,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(15));

-- Location: LCCOMB_X35_Y6_N20
\inst3|Mux244~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux244~6_combout\ = (\inst3|Mux244~5_combout\ & (((\inst3|generic_register_d\(15)) # (!\inst3|Mux241~2_combout\)))) # (!\inst3|Mux244~5_combout\ & (\inst3|Mux244~1_combout\ & ((\inst3|Mux241~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux244~1_combout\,
	datab => \inst3|Mux244~5_combout\,
	datac => \inst3|generic_register_d\(15),
	datad => \inst3|Mux241~2_combout\,
	combout => \inst3|Mux244~6_combout\);

-- Location: LCCOMB_X35_Y6_N22
\inst3|Mux244~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux244~7_combout\ = (\inst3|Mux244~6_combout\ & (((!\inst3|Mux239~0_combout\) # (!\inst3|instruction_register\(6))) # (!\inst3|instruction_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux244~6_combout\,
	datab => \inst3|instruction_register\(8),
	datac => \inst3|instruction_register\(6),
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux244~7_combout\);

-- Location: LCCOMB_X38_Y7_N14
\inst3|REGISTER_A[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(15) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(15))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux244~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_A\(15),
	datac => \inst3|Mux244~7_combout\,
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(15));

-- Location: LCCOMB_X35_Y10_N14
\inst3|generic_register_a[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_a[13]~feeder_combout\ = \inst|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux3~1_combout\,
	combout => \inst3|generic_register_a[13]~feeder_combout\);

-- Location: FF_X35_Y10_N15
\inst3|generic_register_a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_a[13]~feeder_combout\,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(13));

-- Location: FF_X31_Y6_N29
\inst3|segment_register[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux3~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(13));

-- Location: LCCOMB_X32_Y6_N2
\inst3|Mux242~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux242~2_combout\ = (\inst3|instruction_register\(5) & (\inst3|instruction_register\(13) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~q\,
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(13),
	combout => \inst3|Mux242~2_combout\);

-- Location: LCCOMB_X31_Y6_N28
\inst3|Mux242~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux242~3_combout\ = (\inst3|Mux241~5_combout\ & ((\inst3|Mux241~6_combout\ & (\inst3|segment_register\(13))) # (!\inst3|Mux241~6_combout\ & ((\inst3|Mux242~2_combout\))))) # (!\inst3|Mux241~5_combout\ & (!\inst3|Mux241~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~5_combout\,
	datab => \inst3|Mux241~6_combout\,
	datac => \inst3|segment_register\(13),
	datad => \inst3|Mux242~2_combout\,
	combout => \inst3|Mux242~3_combout\);

-- Location: FF_X35_Y6_N11
\inst3|generic_register_b[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux3~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(13));

-- Location: LCCOMB_X35_Y6_N10
\inst3|Mux242~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux242~4_combout\ = (\inst3|Mux242~3_combout\ & ((\inst3|generic_register_a\(13)) # ((!\inst3|Mux235~0_combout\)))) # (!\inst3|Mux242~3_combout\ & (((\inst3|generic_register_b\(13) & \inst3|Mux235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_a\(13),
	datab => \inst3|Mux242~3_combout\,
	datac => \inst3|generic_register_b\(13),
	datad => \inst3|Mux235~0_combout\,
	combout => \inst3|Mux242~4_combout\);

-- Location: FF_X34_Y10_N23
\inst3|tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux3~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(13));

-- Location: FF_X34_Y10_N9
\inst3|stack_pointer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux3~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(13));

-- Location: LCCOMB_X32_Y10_N20
\inst3|segment_offset_h_register[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|segment_offset_h_register[5]~feeder_combout\ = \inst|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux11~1_combout\,
	combout => \inst3|segment_offset_h_register[5]~feeder_combout\);

-- Location: FF_X32_Y10_N21
\inst3|segment_offset_h_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|segment_offset_h_register[5]~feeder_combout\,
	ena => \inst3|Mux83~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_h_register\(5));

-- Location: LCCOMB_X32_Y10_N12
\inst3|Mux242~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux242~0_combout\ = (\inst3|Mux239~0_combout\ & (((\inst3|segment_offset_h_register\(5)) # (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst3|Mux239~0_combout\ & (\inst3|program_counter\(13) & 
-- ((!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(13),
	datab => \inst3|segment_offset_h_register\(5),
	datac => \inst3|Mux239~0_combout\,
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux242~0_combout\);

-- Location: LCCOMB_X34_Y10_N24
\inst3|Mux242~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux242~1_combout\ = (\inst3|Mux242~0_combout\ & ((\inst3|tmp\(13)) # ((!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst3|Mux242~0_combout\ & (((\inst3|stack_pointer\(13) & \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tmp\(13),
	datab => \inst3|stack_pointer\(13),
	datac => \inst3|Mux242~0_combout\,
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux242~1_combout\);

-- Location: LCCOMB_X35_Y6_N4
\inst3|Mux242~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux242~5_combout\ = (\inst3|Mux241~3_combout\ & (((\inst3|Mux241~2_combout\)))) # (!\inst3|Mux241~3_combout\ & ((\inst3|Mux241~2_combout\ & ((\inst3|Mux242~1_combout\))) # (!\inst3|Mux241~2_combout\ & (\inst3|Mux242~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux242~4_combout\,
	datab => \inst3|Mux241~3_combout\,
	datac => \inst3|Mux241~2_combout\,
	datad => \inst3|Mux242~1_combout\,
	combout => \inst3|Mux242~5_combout\);

-- Location: FF_X35_Y10_N19
\inst3|generic_register_d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Mux3~1_combout\,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(13));

-- Location: LCCOMB_X35_Y6_N24
\inst3|Mux242~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux242~6_combout\ = (\inst3|Mux241~3_combout\ & ((\inst3|Mux242~5_combout\ & ((\inst3|generic_register_d\(13)))) # (!\inst3|Mux242~5_combout\ & (\inst3|generic_register_c\(13))))) # (!\inst3|Mux241~3_combout\ & (\inst3|Mux242~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~3_combout\,
	datab => \inst3|Mux242~5_combout\,
	datac => \inst3|generic_register_c\(13),
	datad => \inst3|generic_register_d\(13),
	combout => \inst3|Mux242~6_combout\);

-- Location: LCCOMB_X35_Y6_N2
\inst3|Mux242~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux242~7_combout\ = (\inst3|Mux242~6_combout\ & (((!\inst3|Mux239~0_combout\) # (!\inst3|instruction_register\(6))) # (!\inst3|instruction_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux242~6_combout\,
	datab => \inst3|instruction_register\(8),
	datac => \inst3|instruction_register\(6),
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux242~7_combout\);

-- Location: LCCOMB_X36_Y7_N2
\inst3|REGISTER_A[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(13) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|REGISTER_A\(13)))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|Mux242~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux242~7_combout\,
	datab => \inst3|REGISTER_A\(13),
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(13));

-- Location: LCCOMB_X38_Y7_N22
\inst|tmp2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~9_combout\ = (\inst3|REGISTER_A\(12) & (!\inst3|REGISTER_A\(14) & (\inst3|REGISTER_A\(15) & !\inst3|REGISTER_A\(13)))) # (!\inst3|REGISTER_A\(12) & (\inst3|REGISTER_A\(14) & (\inst3|REGISTER_A\(15) $ (!\inst3|REGISTER_A\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(12),
	datab => \inst3|REGISTER_A\(14),
	datac => \inst3|REGISTER_A\(15),
	datad => \inst3|REGISTER_A\(13),
	combout => \inst|tmp2~9_combout\);

-- Location: LCCOMB_X38_Y7_N8
\inst|tmp2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~8_combout\ = (\inst3|REGISTER_A\(12) & (\inst3|REGISTER_A\(14) $ (((\inst3|REGISTER_A\(13)) # (!\inst3|REGISTER_A\(15)))))) # (!\inst3|REGISTER_A\(12) & ((\inst3|REGISTER_A\(14) & (!\inst3|REGISTER_A\(15) & \inst3|REGISTER_A\(13))) # 
-- (!\inst3|REGISTER_A\(14) & (\inst3|REGISTER_A\(15) & !\inst3|REGISTER_A\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(12),
	datab => \inst3|REGISTER_A\(14),
	datac => \inst3|REGISTER_A\(15),
	datad => \inst3|REGISTER_A\(13),
	combout => \inst|tmp2~8_combout\);

-- Location: LCCOMB_X38_Y7_N24
\inst|tmp2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~10_combout\ = (\inst3|REGISTER_A\(15) & (!\inst3|REGISTER_A\(13) & ((\inst3|REGISTER_A\(14)) # (!\inst3|REGISTER_A\(12))))) # (!\inst3|REGISTER_A\(15) & (\inst3|REGISTER_A\(13) & ((\inst3|REGISTER_A\(12)) # (!\inst3|REGISTER_A\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(12),
	datab => \inst3|REGISTER_A\(14),
	datac => \inst3|REGISTER_A\(15),
	datad => \inst3|REGISTER_A\(13),
	combout => \inst|tmp2~10_combout\);

-- Location: LCCOMB_X38_Y7_N4
\inst|tmp2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~12_combout\ = (\inst|tmp2~10_combout\ & (((!\inst3|REGISTER_A\(11) & !\inst|tmp2~8_combout\)))) # (!\inst|tmp2~10_combout\ & (\inst|tmp2~9_combout\ & ((\inst3|REGISTER_A\(11)) # (\inst|tmp2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~9_combout\,
	datab => \inst3|REGISTER_A\(11),
	datac => \inst|tmp2~8_combout\,
	datad => \inst|tmp2~10_combout\,
	combout => \inst|tmp2~12_combout\);

-- Location: LCCOMB_X38_Y7_N2
\inst|tmp2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~13_combout\ = (\inst|tmp2~9_combout\ & (\inst3|REGISTER_A\(11) $ ((!\inst|tmp2~8_combout\)))) # (!\inst|tmp2~9_combout\ & (\inst|tmp2~8_combout\ & ((\inst3|REGISTER_A\(11)) # (!\inst|tmp2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~9_combout\,
	datab => \inst3|REGISTER_A\(11),
	datac => \inst|tmp2~8_combout\,
	datad => \inst|tmp2~10_combout\,
	combout => \inst|tmp2~13_combout\);

-- Location: LCCOMB_X38_Y7_N28
\inst|tmp2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~16_combout\ = (\inst3|REGISTER_A\(10) & (((\inst|tmp2~11_combout\)))) # (!\inst3|REGISTER_A\(10) & ((\inst|tmp2~12_combout\ & (!\inst|tmp2~11_combout\)) # (!\inst|tmp2~12_combout\ & (\inst|tmp2~11_combout\ & !\inst|tmp2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(10),
	datab => \inst|tmp2~12_combout\,
	datac => \inst|tmp2~11_combout\,
	datad => \inst|tmp2~13_combout\,
	combout => \inst|tmp2~16_combout\);

-- Location: LCCOMB_X38_Y7_N26
\inst|tmp2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~15_combout\ = (\inst|tmp2~13_combout\ & (!\inst3|REGISTER_A\(10) & ((!\inst|tmp2~11_combout\)))) # (!\inst|tmp2~13_combout\ & (\inst|tmp2~12_combout\ & ((\inst3|REGISTER_A\(10)) # (\inst|tmp2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(10),
	datab => \inst|tmp2~12_combout\,
	datac => \inst|tmp2~11_combout\,
	datad => \inst|tmp2~13_combout\,
	combout => \inst|tmp2~15_combout\);

-- Location: LCCOMB_X38_Y7_N16
\inst|tmp2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~18_combout\ = (\inst|tmp2~16_combout\ & (!\inst3|REGISTER_A\(9) & ((!\inst|tmp2~14_combout\)))) # (!\inst|tmp2~16_combout\ & (\inst|tmp2~15_combout\ & ((\inst3|REGISTER_A\(9)) # (\inst|tmp2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(9),
	datab => \inst|tmp2~16_combout\,
	datac => \inst|tmp2~15_combout\,
	datad => \inst|tmp2~14_combout\,
	combout => \inst|tmp2~18_combout\);

-- Location: LCCOMB_X38_Y7_N18
\inst|tmp2~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~19_combout\ = (\inst3|REGISTER_A\(9) & (((\inst|tmp2~14_combout\)))) # (!\inst3|REGISTER_A\(9) & ((\inst|tmp2~15_combout\ & ((!\inst|tmp2~14_combout\))) # (!\inst|tmp2~15_combout\ & (!\inst|tmp2~16_combout\ & \inst|tmp2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(9),
	datab => \inst|tmp2~16_combout\,
	datac => \inst|tmp2~15_combout\,
	datad => \inst|tmp2~14_combout\,
	combout => \inst|tmp2~19_combout\);

-- Location: LCCOMB_X39_Y7_N20
\inst|tmp2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~20_combout\ = (\inst3|REGISTER_A\(8) & (\inst|tmp2~17_combout\)) # (!\inst3|REGISTER_A\(8) & ((\inst|tmp2~17_combout\ & (!\inst|tmp2~18_combout\ & !\inst|tmp2~19_combout\)) # (!\inst|tmp2~17_combout\ & (\inst|tmp2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(8),
	datab => \inst|tmp2~17_combout\,
	datac => \inst|tmp2~18_combout\,
	datad => \inst|tmp2~19_combout\,
	combout => \inst|tmp2~20_combout\);

-- Location: LCCOMB_X39_Y7_N22
\inst|tmp2~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~21_combout\ = (\inst|tmp2~19_combout\ & (!\inst3|REGISTER_A\(8) & (!\inst|tmp2~17_combout\))) # (!\inst|tmp2~19_combout\ & (\inst|tmp2~18_combout\ & ((\inst3|REGISTER_A\(8)) # (\inst|tmp2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(8),
	datab => \inst|tmp2~17_combout\,
	datac => \inst|tmp2~18_combout\,
	datad => \inst|tmp2~19_combout\,
	combout => \inst|tmp2~21_combout\);

-- Location: LCCOMB_X39_Y7_N14
\inst|tmp2~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~49_combout\ = (\inst3|REGISTER_A\(7) & (((\inst|tmp2~22_combout\)))) # (!\inst3|REGISTER_A\(7) & ((\inst|tmp2~21_combout\ & ((!\inst|tmp2~22_combout\))) # (!\inst|tmp2~21_combout\ & (!\inst|tmp2~20_combout\ & \inst|tmp2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(7),
	datab => \inst|tmp2~20_combout\,
	datac => \inst|tmp2~21_combout\,
	datad => \inst|tmp2~22_combout\,
	combout => \inst|tmp2~49_combout\);

-- Location: LCCOMB_X39_Y7_N0
\inst|tmp2~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~50_combout\ = (\inst|tmp2~20_combout\ & (!\inst3|REGISTER_A\(7) & ((!\inst|tmp2~22_combout\)))) # (!\inst|tmp2~20_combout\ & (\inst|tmp2~21_combout\ & ((\inst3|REGISTER_A\(7)) # (\inst|tmp2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(7),
	datab => \inst|tmp2~20_combout\,
	datac => \inst|tmp2~21_combout\,
	datad => \inst|tmp2~22_combout\,
	combout => \inst|tmp2~50_combout\);

-- Location: LCCOMB_X36_Y7_N6
\inst|tmp2~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~52_combout\ = \inst|tmp2~50_combout\ $ ((((!\inst3|REGISTER_A\(6) & !\inst|tmp2~51_combout\)) # (!\inst|tmp2~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(6),
	datab => \inst|tmp2~49_combout\,
	datac => \inst|tmp2~50_combout\,
	datad => \inst|tmp2~51_combout\,
	combout => \inst|tmp2~52_combout\);

-- Location: LCCOMB_X34_Y7_N20
\inst|tmp2~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~23_combout\ = \inst|tmp2~21_combout\ $ ((((!\inst3|REGISTER_A\(7) & !\inst|tmp2~22_combout\)) # (!\inst|tmp2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(7),
	datab => \inst|tmp2~21_combout\,
	datac => \inst|tmp2~22_combout\,
	datad => \inst|tmp2~20_combout\,
	combout => \inst|tmp2~23_combout\);

-- Location: LCCOMB_X34_Y7_N30
\inst|tmp2~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~25_combout\ = (\inst3|REGISTER_A\(14) & ((\inst3|REGISTER_A\(13) & ((\inst3|REGISTER_A\(12)) # (!\inst3|REGISTER_A\(15)))) # (!\inst3|REGISTER_A\(13) & (!\inst3|REGISTER_A\(15) & \inst3|REGISTER_A\(12))))) # (!\inst3|REGISTER_A\(14) & 
-- (!\inst3|REGISTER_A\(13) & (\inst3|REGISTER_A\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(14),
	datab => \inst3|REGISTER_A\(13),
	datac => \inst3|REGISTER_A\(15),
	datad => \inst3|REGISTER_A\(12),
	combout => \inst|tmp2~25_combout\);

-- Location: LCCOMB_X37_Y7_N18
\inst|tmp2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~26_combout\ = \inst|tmp2~9_combout\ $ ((((!\inst3|REGISTER_A\(11) & !\inst|tmp2~8_combout\)) # (!\inst|tmp2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(11),
	datab => \inst|tmp2~10_combout\,
	datac => \inst|tmp2~8_combout\,
	datad => \inst|tmp2~9_combout\,
	combout => \inst|tmp2~26_combout\);

-- Location: LCCOMB_X37_Y7_N0
\inst|tmp2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~24_combout\ = \inst|tmp2~12_combout\ $ ((((!\inst3|REGISTER_A\(10) & !\inst|tmp2~11_combout\)) # (!\inst|tmp2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(10),
	datab => \inst|tmp2~12_combout\,
	datac => \inst|tmp2~11_combout\,
	datad => \inst|tmp2~13_combout\,
	combout => \inst|tmp2~24_combout\);

-- Location: LCCOMB_X37_Y7_N6
\inst|tmp2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~30_combout\ = (\inst|tmp2~25_combout\ & (\inst|tmp2~24_combout\ & (\inst|tmp2~26_combout\ $ (\inst|LessThan1~0_combout\)))) # (!\inst|tmp2~25_combout\ & (\inst|tmp2~26_combout\ & (\inst|LessThan1~0_combout\ & !\inst|tmp2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~25_combout\,
	datab => \inst|tmp2~26_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|tmp2~24_combout\,
	combout => \inst|tmp2~30_combout\);

-- Location: LCCOMB_X37_Y7_N16
\inst|tmp2~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~27_combout\ = (\inst|tmp2~25_combout\ & ((\inst|tmp2~26_combout\ & ((\inst|tmp2~24_combout\) # (!\inst|LessThan1~0_combout\))) # (!\inst|tmp2~26_combout\ & ((\inst|LessThan1~0_combout\) # (!\inst|tmp2~24_combout\))))) # (!\inst|tmp2~25_combout\ 
-- & (\inst|tmp2~24_combout\ $ (((\inst|tmp2~26_combout\ & \inst|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~25_combout\,
	datab => \inst|tmp2~26_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|tmp2~24_combout\,
	combout => \inst|tmp2~27_combout\);

-- Location: LCCOMB_X37_Y7_N8
\inst|tmp2~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~31_combout\ = \inst|tmp2~15_combout\ $ ((((!\inst3|REGISTER_A\(9) & !\inst|tmp2~14_combout\)) # (!\inst|tmp2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(9),
	datab => \inst|tmp2~15_combout\,
	datac => \inst|tmp2~14_combout\,
	datad => \inst|tmp2~16_combout\,
	combout => \inst|tmp2~31_combout\);

-- Location: LCCOMB_X37_Y7_N10
\inst|tmp2~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~104_combout\ = (\inst3|REGISTER_A\(11) & ((\inst3|REGISTER_A\(12) $ (!\inst3|REGISTER_A\(15))) # (!\inst3|REGISTER_A\(14)))) # (!\inst3|REGISTER_A\(11) & ((\inst3|REGISTER_A\(15)) # (\inst3|REGISTER_A\(14) $ (\inst3|REGISTER_A\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(14),
	datab => \inst3|REGISTER_A\(11),
	datac => \inst3|REGISTER_A\(12),
	datad => \inst3|REGISTER_A\(15),
	combout => \inst|tmp2~104_combout\);

-- Location: LCCOMB_X37_Y7_N28
\inst|tmp2~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~105_combout\ = (\inst|tmp2~104_combout\ & (\inst3|REGISTER_A\(13) $ (((\inst3|REGISTER_A\(14) & !\inst3|REGISTER_A\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(14),
	datab => \inst3|REGISTER_A\(12),
	datac => \inst3|REGISTER_A\(13),
	datad => \inst|tmp2~104_combout\,
	combout => \inst|tmp2~105_combout\);

-- Location: LCCOMB_X37_Y7_N26
\inst|tmp2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~28_combout\ = (\inst3|REGISTER_A\(14) & (\inst3|REGISTER_A\(12) & (\inst3|REGISTER_A\(13) & \inst3|REGISTER_A\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(14),
	datab => \inst3|REGISTER_A\(12),
	datac => \inst3|REGISTER_A\(13),
	datad => \inst3|REGISTER_A\(15),
	combout => \inst|tmp2~28_combout\);

-- Location: LCCOMB_X37_Y7_N4
\inst|tmp2~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~102_combout\ = (\inst|tmp2~28_combout\ & ((!\inst|tmp2~26_combout\) # (!\inst|LessThan1~0_combout\))) # (!\inst|tmp2~28_combout\ & (!\inst|LessThan1~0_combout\ & !\inst|tmp2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~28_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|tmp2~26_combout\,
	combout => \inst|tmp2~102_combout\);

-- Location: LCCOMB_X37_Y7_N20
\inst|tmp2~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~29_combout\ = (\inst|tmp2~24_combout\ & (((\inst|tmp2~105_combout\)))) # (!\inst|tmp2~24_combout\ & (\inst|tmp2~102_combout\ $ (((\inst|tmp2~25_combout\ & \inst|tmp2~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~25_combout\,
	datab => \inst|tmp2~105_combout\,
	datac => \inst|tmp2~102_combout\,
	datad => \inst|tmp2~24_combout\,
	combout => \inst|tmp2~29_combout\);

-- Location: LCCOMB_X37_Y7_N12
\inst|tmp2~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~33_combout\ = (\inst|tmp2~30_combout\ & (\inst|tmp2~27_combout\ $ ((\inst|tmp2~31_combout\)))) # (!\inst|tmp2~30_combout\ & ((\inst|tmp2~27_combout\) # ((\inst|tmp2~31_combout\ & \inst|tmp2~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~30_combout\,
	datab => \inst|tmp2~27_combout\,
	datac => \inst|tmp2~31_combout\,
	datad => \inst|tmp2~29_combout\,
	combout => \inst|tmp2~33_combout\);

-- Location: LCCOMB_X37_Y7_N2
\inst|tmp2~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~34_combout\ = (\inst|tmp2~29_combout\ & (((\inst|tmp2~27_combout\ & \inst|tmp2~31_combout\)))) # (!\inst|tmp2~29_combout\ & (\inst|tmp2~30_combout\ & ((!\inst|tmp2~31_combout\) # (!\inst|tmp2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~30_combout\,
	datab => \inst|tmp2~27_combout\,
	datac => \inst|tmp2~31_combout\,
	datad => \inst|tmp2~29_combout\,
	combout => \inst|tmp2~34_combout\);

-- Location: LCCOMB_X37_Y7_N30
\inst|tmp2~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~32_combout\ = (\inst|tmp2~30_combout\ & (((!\inst|tmp2~31_combout\)))) # (!\inst|tmp2~30_combout\ & ((\inst|tmp2~31_combout\ & ((\inst|tmp2~27_combout\) # (!\inst|tmp2~29_combout\))) # (!\inst|tmp2~31_combout\ & ((\inst|tmp2~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~30_combout\,
	datab => \inst|tmp2~27_combout\,
	datac => \inst|tmp2~31_combout\,
	datad => \inst|tmp2~29_combout\,
	combout => \inst|tmp2~32_combout\);

-- Location: LCCOMB_X37_Y8_N16
\inst|tmp2~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~35_combout\ = \inst|tmp2~18_combout\ $ ((((!\inst3|REGISTER_A\(8) & !\inst|tmp2~17_combout\)) # (!\inst|tmp2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~18_combout\,
	datab => \inst3|REGISTER_A\(8),
	datac => \inst|tmp2~19_combout\,
	datad => \inst|tmp2~17_combout\,
	combout => \inst|tmp2~35_combout\);

-- Location: LCCOMB_X37_Y7_N24
\inst|tmp2~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~36_combout\ = (\inst|tmp2~33_combout\ & (\inst|tmp2~34_combout\ $ (((\inst|tmp2~35_combout\))))) # (!\inst|tmp2~33_combout\ & (((!\inst|tmp2~34_combout\ & \inst|tmp2~32_combout\)) # (!\inst|tmp2~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~33_combout\,
	datab => \inst|tmp2~34_combout\,
	datac => \inst|tmp2~32_combout\,
	datad => \inst|tmp2~35_combout\,
	combout => \inst|tmp2~36_combout\);

-- Location: LCCOMB_X36_Y7_N4
\inst|tmp2~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~37_combout\ = (\inst|tmp2~34_combout\ & ((\inst|tmp2~32_combout\ $ (\inst|tmp2~35_combout\)))) # (!\inst|tmp2~34_combout\ & ((\inst|tmp2~32_combout\) # ((!\inst|tmp2~33_combout\ & \inst|tmp2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~34_combout\,
	datab => \inst|tmp2~33_combout\,
	datac => \inst|tmp2~32_combout\,
	datad => \inst|tmp2~35_combout\,
	combout => \inst|tmp2~37_combout\);

-- Location: LCCOMB_X37_Y7_N22
\inst|tmp2~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~38_combout\ = (\inst|tmp2~33_combout\ & (\inst|tmp2~34_combout\ & ((!\inst|tmp2~35_combout\) # (!\inst|tmp2~32_combout\)))) # (!\inst|tmp2~33_combout\ & (((\inst|tmp2~32_combout\ & \inst|tmp2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~33_combout\,
	datab => \inst|tmp2~34_combout\,
	datac => \inst|tmp2~32_combout\,
	datad => \inst|tmp2~35_combout\,
	combout => \inst|tmp2~38_combout\);

-- Location: LCCOMB_X36_Y7_N14
\inst|tmp2~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~54_combout\ = (\inst|tmp2~23_combout\ & ((\inst|tmp2~36_combout\ & ((!\inst|tmp2~38_combout\))) # (!\inst|tmp2~36_combout\ & ((\inst|tmp2~38_combout\) # (!\inst|tmp2~37_combout\))))) # (!\inst|tmp2~23_combout\ & (\inst|tmp2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~23_combout\,
	datab => \inst|tmp2~36_combout\,
	datac => \inst|tmp2~37_combout\,
	datad => \inst|tmp2~38_combout\,
	combout => \inst|tmp2~54_combout\);

-- Location: LCCOMB_X36_Y7_N8
\inst|tmp2~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~53_combout\ = (\inst|tmp2~23_combout\ & (!\inst|tmp2~38_combout\ & ((\inst|tmp2~36_combout\) # (\inst|tmp2~37_combout\)))) # (!\inst|tmp2~23_combout\ & (((\inst|tmp2~38_combout\) # (!\inst|tmp2~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~23_combout\,
	datab => \inst|tmp2~36_combout\,
	datac => \inst|tmp2~37_combout\,
	datad => \inst|tmp2~38_combout\,
	combout => \inst|tmp2~53_combout\);

-- Location: LCCOMB_X36_Y7_N16
\inst|tmp2~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~55_combout\ = (\inst|tmp2~37_combout\ & (\inst|tmp2~38_combout\ & ((!\inst|tmp2~36_combout\) # (!\inst|tmp2~23_combout\)))) # (!\inst|tmp2~37_combout\ & (\inst|tmp2~23_combout\ & ((\inst|tmp2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~23_combout\,
	datab => \inst|tmp2~38_combout\,
	datac => \inst|tmp2~37_combout\,
	datad => \inst|tmp2~36_combout\,
	combout => \inst|tmp2~55_combout\);

-- Location: LCCOMB_X36_Y7_N12
\inst|tmp2~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~65_combout\ = (\inst|tmp2~52_combout\ & ((\inst|tmp2~53_combout\ & ((!\inst|tmp2~55_combout\))) # (!\inst|tmp2~53_combout\ & ((\inst|tmp2~55_combout\) # (!\inst|tmp2~54_combout\))))) # (!\inst|tmp2~52_combout\ & (((\inst|tmp2~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~52_combout\,
	datab => \inst|tmp2~54_combout\,
	datac => \inst|tmp2~53_combout\,
	datad => \inst|tmp2~55_combout\,
	combout => \inst|tmp2~65_combout\);

-- Location: LCCOMB_X39_Y7_N10
\inst|tmp2~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~61_combout\ = (\inst|tmp2~49_combout\ & (!\inst|tmp2~51_combout\ & (!\inst3|REGISTER_A\(6)))) # (!\inst|tmp2~49_combout\ & (\inst|tmp2~50_combout\ & ((\inst|tmp2~51_combout\) # (\inst3|REGISTER_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~51_combout\,
	datab => \inst3|REGISTER_A\(6),
	datac => \inst|tmp2~49_combout\,
	datad => \inst|tmp2~50_combout\,
	combout => \inst|tmp2~61_combout\);

-- Location: LCCOMB_X39_Y7_N8
\inst|tmp2~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~62_combout\ = (\inst3|REGISTER_A\(6) & (((!\inst|tmp2~49_combout\ & !\inst|tmp2~50_combout\)))) # (!\inst3|REGISTER_A\(6) & ((\inst|tmp2~50_combout\) # ((\inst|tmp2~51_combout\ & \inst|tmp2~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~51_combout\,
	datab => \inst3|REGISTER_A\(6),
	datac => \inst|tmp2~49_combout\,
	datad => \inst|tmp2~50_combout\,
	combout => \inst|tmp2~62_combout\);

-- Location: LCCOMB_X36_Y7_N20
\inst|tmp2~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~63_combout\ = \inst|tmp2~61_combout\ $ ((((!\inst3|REGISTER_A\(5) & !\inst|tmp2~62_combout\)) # (!\inst|tmp2~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(5),
	datab => \inst|tmp2~61_combout\,
	datac => \inst|tmp2~60_combout\,
	datad => \inst|tmp2~62_combout\,
	combout => \inst|tmp2~63_combout\);

-- Location: LCCOMB_X36_Y7_N30
\inst|tmp2~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~66_combout\ = (\inst|tmp2~54_combout\ & (\inst|tmp2~55_combout\ & ((!\inst|tmp2~53_combout\) # (!\inst|tmp2~52_combout\)))) # (!\inst|tmp2~54_combout\ & (\inst|tmp2~52_combout\ & (\inst|tmp2~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~52_combout\,
	datab => \inst|tmp2~53_combout\,
	datac => \inst|tmp2~54_combout\,
	datad => \inst|tmp2~55_combout\,
	combout => \inst|tmp2~66_combout\);

-- Location: LCCOMB_X36_Y7_N10
\inst|tmp2~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~64_combout\ = (\inst|tmp2~52_combout\ & (!\inst|tmp2~55_combout\ & ((\inst|tmp2~53_combout\) # (\inst|tmp2~54_combout\)))) # (!\inst|tmp2~52_combout\ & (((\inst|tmp2~55_combout\) # (!\inst|tmp2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~52_combout\,
	datab => \inst|tmp2~53_combout\,
	datac => \inst|tmp2~54_combout\,
	datad => \inst|tmp2~55_combout\,
	combout => \inst|tmp2~64_combout\);

-- Location: LCCOMB_X36_Y7_N22
\inst|tmp2~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~77_combout\ = (\inst|tmp2~65_combout\ & (\inst|tmp2~66_combout\ & ((!\inst|tmp2~64_combout\) # (!\inst|tmp2~63_combout\)))) # (!\inst|tmp2~65_combout\ & (\inst|tmp2~63_combout\ & ((\inst|tmp2~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~65_combout\,
	datab => \inst|tmp2~63_combout\,
	datac => \inst|tmp2~66_combout\,
	datad => \inst|tmp2~64_combout\,
	combout => \inst|tmp2~77_combout\);

-- Location: LCCOMB_X29_Y9_N30
\inst3|Mux233~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux233~0_combout\ = (\inst3|Mux239~0_combout\ & (((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\)))) # (!\inst3|Mux239~0_combout\ & ((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (\inst3|stack_pointer\(4))) # 
-- (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & ((\inst3|instruction_register\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|stack_pointer\(4),
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst3|instruction_register\(4),
	combout => \inst3|Mux233~0_combout\);

-- Location: LCCOMB_X29_Y9_N10
\inst3|Mux233~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux233~1_combout\ = (\inst3|Mux233~0_combout\ & ((\inst3|tmp\(4)) # ((!\inst3|Mux239~0_combout\)))) # (!\inst3|Mux233~0_combout\ & (((\inst3|segment_offset_l_register\(4) & \inst3|Mux239~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tmp\(4),
	datab => \inst3|Mux233~0_combout\,
	datac => \inst3|segment_offset_l_register\(4),
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux233~1_combout\);

-- Location: LCCOMB_X30_Y6_N2
\inst3|Mux233~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux233~2_combout\ = (\inst3|instruction_register\(6) & (\inst3|program_counter\(4) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst3|instruction_register\(6),
	datad => \inst3|program_counter\(4),
	combout => \inst3|Mux233~2_combout\);

-- Location: LCCOMB_X31_Y6_N14
\inst3|Mux233~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux233~3_combout\ = (\inst3|Mux235~3_combout\ & ((\inst3|Mux235~4_combout\ & (\inst3|segment_register\(4))) # (!\inst3|Mux235~4_combout\ & ((\inst3|Mux233~2_combout\))))) # (!\inst3|Mux235~3_combout\ & (!\inst3|Mux235~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~3_combout\,
	datab => \inst3|Mux235~4_combout\,
	datac => \inst3|segment_register\(4),
	datad => \inst3|Mux233~2_combout\,
	combout => \inst3|Mux233~3_combout\);

-- Location: LCCOMB_X30_Y7_N30
\inst3|Mux233~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux233~4_combout\ = (\inst3|Mux235~0_combout\ & ((\inst3|Mux233~3_combout\ & (\inst3|generic_register_a\(4))) # (!\inst3|Mux233~3_combout\ & ((\inst3|generic_register_c\(4)))))) # (!\inst3|Mux235~0_combout\ & (((\inst3|Mux233~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux235~0_combout\,
	datab => \inst3|generic_register_a\(4),
	datac => \inst3|generic_register_c\(4),
	datad => \inst3|Mux233~3_combout\,
	combout => \inst3|Mux233~4_combout\);

-- Location: LCCOMB_X30_Y7_N24
\inst3|Mux233~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux233~5_combout\ = (\inst3|Mux237~2_combout\ & (((\inst3|generic_register_b\(4)) # (\inst3|Mux235~2_combout\)))) # (!\inst3|Mux237~2_combout\ & (\inst3|Mux233~4_combout\ & ((!\inst3|Mux235~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux233~4_combout\,
	datab => \inst3|Mux237~2_combout\,
	datac => \inst3|generic_register_b\(4),
	datad => \inst3|Mux235~2_combout\,
	combout => \inst3|Mux233~5_combout\);

-- Location: LCCOMB_X30_Y7_N0
\inst3|Mux233~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux233~6_combout\ = (\inst3|Mux235~2_combout\ & ((\inst3|Mux233~5_combout\ & (\inst3|generic_register_d\(4))) # (!\inst3|Mux233~5_combout\ & ((\inst3|Mux233~1_combout\))))) # (!\inst3|Mux235~2_combout\ & (((\inst3|Mux233~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_d\(4),
	datab => \inst3|Mux235~2_combout\,
	datac => \inst3|Mux233~1_combout\,
	datad => \inst3|Mux233~5_combout\,
	combout => \inst3|Mux233~6_combout\);

-- Location: LCCOMB_X30_Y7_N6
\inst3|Mux233~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux233~7_combout\ = (\inst3|Mux233~6_combout\) # ((\inst3|Mux239~0_combout\ & (\inst3|instruction_register\(8) & \inst3|instruction_register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux233~6_combout\,
	datab => \inst3|Mux239~0_combout\,
	datac => \inst3|instruction_register\(8),
	datad => \inst3|instruction_register\(5),
	combout => \inst3|Mux233~7_combout\);

-- Location: LCCOMB_X30_Y7_N22
\inst3|REGISTER_A[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(4) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(4))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux233~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(4),
	datac => \inst3|Mux233~7_combout\,
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(4));

-- Location: LCCOMB_X39_Y7_N26
\inst|tmp2~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~73_combout\ = (\inst3|REGISTER_A\(5) & (((!\inst|tmp2~60_combout\ & !\inst|tmp2~61_combout\)))) # (!\inst3|REGISTER_A\(5) & ((\inst|tmp2~61_combout\) # ((\inst|tmp2~62_combout\ & \inst|tmp2~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(5),
	datab => \inst|tmp2~62_combout\,
	datac => \inst|tmp2~60_combout\,
	datad => \inst|tmp2~61_combout\,
	combout => \inst|tmp2~73_combout\);

-- Location: LCCOMB_X39_Y7_N24
\inst|tmp2~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~72_combout\ = (\inst|tmp2~60_combout\ & (!\inst3|REGISTER_A\(5) & (!\inst|tmp2~62_combout\))) # (!\inst|tmp2~60_combout\ & (\inst|tmp2~61_combout\ & ((\inst3|REGISTER_A\(5)) # (\inst|tmp2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(5),
	datab => \inst|tmp2~60_combout\,
	datac => \inst|tmp2~62_combout\,
	datad => \inst|tmp2~61_combout\,
	combout => \inst|tmp2~72_combout\);

-- Location: LCCOMB_X39_Y7_N16
\inst|tmp2~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~74_combout\ = \inst|tmp2~72_combout\ $ ((((!\inst3|REGISTER_A\(4) & !\inst|tmp2~73_combout\)) # (!\inst|tmp2~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~71_combout\,
	datab => \inst3|REGISTER_A\(4),
	datac => \inst|tmp2~73_combout\,
	datad => \inst|tmp2~72_combout\,
	combout => \inst|tmp2~74_combout\);

-- Location: LCCOMB_X36_Y7_N26
\inst|tmp2~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~75_combout\ = (\inst|tmp2~63_combout\ & (!\inst|tmp2~66_combout\ & ((\inst|tmp2~64_combout\) # (\inst|tmp2~65_combout\)))) # (!\inst|tmp2~63_combout\ & (((\inst|tmp2~66_combout\) # (!\inst|tmp2~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~64_combout\,
	datab => \inst|tmp2~63_combout\,
	datac => \inst|tmp2~66_combout\,
	datad => \inst|tmp2~65_combout\,
	combout => \inst|tmp2~75_combout\);

-- Location: LCCOMB_X36_Y7_N24
\inst|tmp2~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~76_combout\ = (\inst|tmp2~63_combout\ & ((\inst|tmp2~66_combout\ & ((!\inst|tmp2~64_combout\))) # (!\inst|tmp2~66_combout\ & ((\inst|tmp2~64_combout\) # (!\inst|tmp2~65_combout\))))) # (!\inst|tmp2~63_combout\ & (((\inst|tmp2~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~65_combout\,
	datab => \inst|tmp2~63_combout\,
	datac => \inst|tmp2~66_combout\,
	datad => \inst|tmp2~64_combout\,
	combout => \inst|tmp2~76_combout\);

-- Location: LCCOMB_X36_Y7_N0
\inst|tmp2~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~78_combout\ = \inst|tmp2~77_combout\ $ (((\inst|tmp2~76_combout\) # ((\inst|tmp2~74_combout\ & \inst|tmp2~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~77_combout\,
	datab => \inst|tmp2~74_combout\,
	datac => \inst|tmp2~75_combout\,
	datad => \inst|tmp2~76_combout\,
	combout => \inst|tmp2~78_combout\);

-- Location: LCCOMB_X36_Y7_N28
\inst|tmp2~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~67_combout\ = \inst|tmp2~66_combout\ $ (((\inst|tmp2~65_combout\) # ((\inst|tmp2~64_combout\ & \inst|tmp2~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~64_combout\,
	datab => \inst|tmp2~63_combout\,
	datac => \inst|tmp2~66_combout\,
	datad => \inst|tmp2~65_combout\,
	combout => \inst|tmp2~67_combout\);

-- Location: LCCOMB_X36_Y7_N18
\inst|tmp2~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~56_combout\ = \inst|tmp2~55_combout\ $ (((\inst|tmp2~54_combout\) # ((\inst|tmp2~52_combout\ & \inst|tmp2~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~52_combout\,
	datab => \inst|tmp2~55_combout\,
	datac => \inst|tmp2~54_combout\,
	datad => \inst|tmp2~53_combout\,
	combout => \inst|tmp2~56_combout\);

-- Location: LCCOMB_X34_Y7_N2
\inst|tmp2~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~41_combout\ = (\inst|LessThan1~0_combout\ & ((\inst|tmp2~25_combout\ & ((\inst|tmp2~24_combout\) # (\inst|tmp2~26_combout\))) # (!\inst|tmp2~25_combout\ & ((!\inst|tmp2~26_combout\))))) # (!\inst|LessThan1~0_combout\ & (((\inst|tmp2~24_combout\ 
-- & \inst|tmp2~26_combout\)) # (!\inst|tmp2~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \inst|tmp2~25_combout\,
	datac => \inst|tmp2~24_combout\,
	datad => \inst|tmp2~26_combout\,
	combout => \inst|tmp2~41_combout\);

-- Location: LCCOMB_X34_Y7_N14
\inst|LessThan5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan5~0_combout\ = (\inst|tmp2~25_combout\) # (!\inst|tmp2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tmp2~25_combout\,
	datad => \inst|tmp2~26_combout\,
	combout => \inst|LessThan5~0_combout\);

-- Location: LCCOMB_X34_Y7_N12
\inst|tmp2~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~40_combout\ = \inst|tmp2~30_combout\ $ ((((\inst|tmp2~31_combout\ & \inst|tmp2~27_combout\)) # (!\inst|tmp2~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~31_combout\,
	datab => \inst|tmp2~29_combout\,
	datac => \inst|tmp2~30_combout\,
	datad => \inst|tmp2~27_combout\,
	combout => \inst|tmp2~40_combout\);

-- Location: LCCOMB_X34_Y7_N28
\inst|tmp2~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~42_combout\ = (!\inst|tmp2~41_combout\ & (((!\inst|tmp2~40_combout\) # (!\inst|LessThan5~0_combout\)) # (!\inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \inst|tmp2~41_combout\,
	datac => \inst|LessThan5~0_combout\,
	datad => \inst|tmp2~40_combout\,
	combout => \inst|tmp2~42_combout\);

-- Location: LCCOMB_X34_Y7_N8
\inst|tmp2~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~44_combout\ = \inst|tmp2~34_combout\ $ (((\inst|tmp2~33_combout\) # ((\inst|tmp2~32_combout\ & \inst|tmp2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~33_combout\,
	datab => \inst|tmp2~32_combout\,
	datac => \inst|tmp2~34_combout\,
	datad => \inst|tmp2~35_combout\,
	combout => \inst|tmp2~44_combout\);

-- Location: LCCOMB_X34_Y7_N18
\inst|tmp2~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~103_combout\ = (!\inst|tmp2~40_combout\ & (((!\inst|tmp2~25_combout\ & \inst|tmp2~26_combout\)) # (!\inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~25_combout\,
	datab => \inst|tmp2~26_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|tmp2~40_combout\,
	combout => \inst|tmp2~103_combout\);

-- Location: LCCOMB_X34_Y7_N4
\inst|tmp2~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~46_combout\ = (\inst|tmp2~43_combout\ & ((\inst|tmp2~44_combout\ $ (\inst|tmp2~103_combout\)))) # (!\inst|tmp2~43_combout\ & (\inst|tmp2~103_combout\ & ((!\inst|tmp2~44_combout\) # (!\inst|tmp2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~43_combout\,
	datab => \inst|tmp2~42_combout\,
	datac => \inst|tmp2~44_combout\,
	datad => \inst|tmp2~103_combout\,
	combout => \inst|tmp2~46_combout\);

-- Location: LCCOMB_X34_Y7_N22
\inst|tmp2~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~47_combout\ = (\inst|tmp2~44_combout\ & (((\inst|tmp2~42_combout\ & !\inst|tmp2~103_combout\)))) # (!\inst|tmp2~44_combout\ & (\inst|tmp2~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~43_combout\,
	datab => \inst|tmp2~42_combout\,
	datac => \inst|tmp2~44_combout\,
	datad => \inst|tmp2~103_combout\,
	combout => \inst|tmp2~47_combout\);

-- Location: LCCOMB_X34_Y7_N24
\inst|tmp2~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~39_combout\ = \inst|tmp2~38_combout\ $ (((\inst|tmp2~37_combout\) # ((\inst|tmp2~36_combout\ & \inst|tmp2~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~36_combout\,
	datab => \inst|tmp2~23_combout\,
	datac => \inst|tmp2~38_combout\,
	datad => \inst|tmp2~37_combout\,
	combout => \inst|tmp2~39_combout\);

-- Location: LCCOMB_X34_Y7_N26
\inst|tmp2~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~57_combout\ = (\inst|tmp2~46_combout\ & (((\inst|tmp2~45_combout\ & !\inst|tmp2~47_combout\)) # (!\inst|tmp2~39_combout\))) # (!\inst|tmp2~46_combout\ & ((\inst|tmp2~47_combout\ $ (\inst|tmp2~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~45_combout\,
	datab => \inst|tmp2~46_combout\,
	datac => \inst|tmp2~47_combout\,
	datad => \inst|tmp2~39_combout\,
	combout => \inst|tmp2~57_combout\);

-- Location: LCCOMB_X34_Y7_N0
\inst|tmp2~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~48_combout\ = (\inst|tmp2~46_combout\ & (\inst|tmp2~45_combout\ & ((\inst|tmp2~39_combout\)))) # (!\inst|tmp2~46_combout\ & (\inst|tmp2~47_combout\ & ((!\inst|tmp2~39_combout\) # (!\inst|tmp2~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~45_combout\,
	datab => \inst|tmp2~46_combout\,
	datac => \inst|tmp2~47_combout\,
	datad => \inst|tmp2~39_combout\,
	combout => \inst|tmp2~48_combout\);

-- Location: LCCOMB_X35_Y8_N8
\inst|tmp2~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~69_combout\ = (\inst|tmp2~56_combout\ & ((\inst|tmp2~57_combout\ & ((!\inst|tmp2~48_combout\))) # (!\inst|tmp2~57_combout\ & ((\inst|tmp2~48_combout\) # (!\inst|tmp2~58_combout\))))) # (!\inst|tmp2~56_combout\ & (((\inst|tmp2~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~58_combout\,
	datab => \inst|tmp2~56_combout\,
	datac => \inst|tmp2~57_combout\,
	datad => \inst|tmp2~48_combout\,
	combout => \inst|tmp2~69_combout\);

-- Location: LCCOMB_X35_Y8_N18
\inst|tmp2~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~59_combout\ = (\inst|tmp2~58_combout\ & (\inst|tmp2~48_combout\ & ((!\inst|tmp2~57_combout\) # (!\inst|tmp2~56_combout\)))) # (!\inst|tmp2~58_combout\ & (\inst|tmp2~56_combout\ & (\inst|tmp2~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~58_combout\,
	datab => \inst|tmp2~56_combout\,
	datac => \inst|tmp2~57_combout\,
	datad => \inst|tmp2~48_combout\,
	combout => \inst|tmp2~59_combout\);

-- Location: LCCOMB_X35_Y8_N14
\inst|tmp2~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~70_combout\ = (\inst|tmp2~69_combout\ & (\inst|tmp2~59_combout\ & ((!\inst|tmp2~67_combout\) # (!\inst|tmp2~68_combout\)))) # (!\inst|tmp2~69_combout\ & (\inst|tmp2~68_combout\ & (\inst|tmp2~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~68_combout\,
	datab => \inst|tmp2~67_combout\,
	datac => \inst|tmp2~69_combout\,
	datad => \inst|tmp2~59_combout\,
	combout => \inst|tmp2~70_combout\);

-- Location: LCCOMB_X35_Y8_N2
\inst|tmp2~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~79_combout\ = (\inst|tmp2~67_combout\ & (!\inst|tmp2~59_combout\ & ((\inst|tmp2~68_combout\) # (\inst|tmp2~69_combout\)))) # (!\inst|tmp2~67_combout\ & (((\inst|tmp2~59_combout\) # (!\inst|tmp2~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~68_combout\,
	datab => \inst|tmp2~67_combout\,
	datac => \inst|tmp2~69_combout\,
	datad => \inst|tmp2~59_combout\,
	combout => \inst|tmp2~79_combout\);

-- Location: LCCOMB_X35_Y8_N28
\inst|tmp2~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~90_combout\ = (\inst|tmp2~80_combout\ & (\inst|tmp2~78_combout\ $ ((\inst|tmp2~70_combout\)))) # (!\inst|tmp2~80_combout\ & (((!\inst|tmp2~70_combout\ & \inst|tmp2~79_combout\)) # (!\inst|tmp2~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~80_combout\,
	datab => \inst|tmp2~78_combout\,
	datac => \inst|tmp2~70_combout\,
	datad => \inst|tmp2~79_combout\,
	combout => \inst|tmp2~90_combout\);

-- Location: LCCOMB_X35_Y8_N26
\inst|tmp2~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~91_combout\ = (\inst|tmp2~78_combout\ & ((\inst|tmp2~70_combout\ & ((!\inst|tmp2~79_combout\))) # (!\inst|tmp2~70_combout\ & ((\inst|tmp2~79_combout\) # (!\inst|tmp2~80_combout\))))) # (!\inst|tmp2~78_combout\ & (((\inst|tmp2~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~80_combout\,
	datab => \inst|tmp2~78_combout\,
	datac => \inst|tmp2~70_combout\,
	datad => \inst|tmp2~79_combout\,
	combout => \inst|tmp2~91_combout\);

-- Location: LCCOMB_X32_Y7_N22
\inst|tmp2~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~86_combout\ = (\inst|tmp2~74_combout\ & (!\inst|tmp2~77_combout\ & ((\inst|tmp2~75_combout\) # (\inst|tmp2~76_combout\)))) # (!\inst|tmp2~74_combout\ & (((\inst|tmp2~77_combout\) # (!\inst|tmp2~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~75_combout\,
	datab => \inst|tmp2~74_combout\,
	datac => \inst|tmp2~77_combout\,
	datad => \inst|tmp2~76_combout\,
	combout => \inst|tmp2~86_combout\);

-- Location: LCCOMB_X39_Y7_N12
\inst|tmp2~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~83_combout\ = (\inst|tmp2~71_combout\ & (!\inst3|REGISTER_A\(4) & (!\inst|tmp2~73_combout\))) # (!\inst|tmp2~71_combout\ & (\inst|tmp2~72_combout\ & ((\inst3|REGISTER_A\(4)) # (\inst|tmp2~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~71_combout\,
	datab => \inst3|REGISTER_A\(4),
	datac => \inst|tmp2~73_combout\,
	datad => \inst|tmp2~72_combout\,
	combout => \inst|tmp2~83_combout\);

-- Location: LCCOMB_X35_Y7_N14
\inst|tmp2~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~84_combout\ = (\inst3|REGISTER_A\(4) & (((!\inst|tmp2~71_combout\ & !\inst|tmp2~72_combout\)))) # (!\inst3|REGISTER_A\(4) & ((\inst|tmp2~72_combout\) # ((\inst|tmp2~73_combout\ & \inst|tmp2~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~73_combout\,
	datab => \inst3|REGISTER_A\(4),
	datac => \inst|tmp2~71_combout\,
	datad => \inst|tmp2~72_combout\,
	combout => \inst|tmp2~84_combout\);

-- Location: LCCOMB_X39_Y7_N2
\inst|tmp2~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~85_combout\ = \inst|tmp2~83_combout\ $ ((((!\inst3|REGISTER_A\(3) & !\inst|tmp2~84_combout\)) # (!\inst|tmp2~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~83_combout\,
	datab => \inst|tmp2~82_combout\,
	datac => \inst3|REGISTER_A\(3),
	datad => \inst|tmp2~84_combout\,
	combout => \inst|tmp2~85_combout\);

-- Location: LCCOMB_X32_Y7_N26
\inst|tmp2~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~88_combout\ = (\inst|tmp2~76_combout\ & (\inst|tmp2~77_combout\ & ((!\inst|tmp2~75_combout\) # (!\inst|tmp2~74_combout\)))) # (!\inst|tmp2~76_combout\ & (((\inst|tmp2~74_combout\ & \inst|tmp2~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~77_combout\,
	datab => \inst|tmp2~74_combout\,
	datac => \inst|tmp2~75_combout\,
	datad => \inst|tmp2~76_combout\,
	combout => \inst|tmp2~88_combout\);

-- Location: LCCOMB_X32_Y7_N16
\inst|tmp2~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~87_combout\ = (\inst|tmp2~77_combout\ & (\inst|tmp2~74_combout\ $ ((\inst|tmp2~75_combout\)))) # (!\inst|tmp2~77_combout\ & ((\inst|tmp2~75_combout\) # ((\inst|tmp2~74_combout\ & !\inst|tmp2~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~77_combout\,
	datab => \inst|tmp2~74_combout\,
	datac => \inst|tmp2~75_combout\,
	datad => \inst|tmp2~76_combout\,
	combout => \inst|tmp2~87_combout\);

-- Location: LCCOMB_X32_Y7_N4
\inst|tmp2~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~89_combout\ = \inst|tmp2~88_combout\ $ (((\inst|tmp2~87_combout\) # ((\inst|tmp2~86_combout\ & \inst|tmp2~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~86_combout\,
	datab => \inst|tmp2~85_combout\,
	datac => \inst|tmp2~88_combout\,
	datad => \inst|tmp2~87_combout\,
	combout => \inst|tmp2~89_combout\);

-- Location: LCCOMB_X35_Y8_N0
\inst|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = \inst|tmp2~81_combout\ $ (((!\inst|tmp2~91_combout\ & ((!\inst|tmp2~89_combout\) # (!\inst|tmp2~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~81_combout\,
	datab => \inst|tmp2~90_combout\,
	datac => \inst|tmp2~91_combout\,
	datad => \inst|tmp2~89_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y8_N20
\inst|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = (\inst1|Mux14~0_combout\ & (\inst3|REGISTER_B\(12))) # (!\inst1|Mux14~0_combout\ & (((\inst1|Mux13~0_combout\ & \inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(12),
	datab => \inst1|Mux13~0_combout\,
	datac => \inst1|Mux14~0_combout\,
	datad => \inst|Mux4~0_combout\,
	combout => \inst|Mux4~1_combout\);

-- Location: FF_X34_Y9_N25
\inst3|program_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[12]~40_combout\,
	asdata => \inst|Mux4~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(12));

-- Location: LCCOMB_X34_Y9_N26
\inst3|program_counter[13]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[13]~43_combout\ = (\inst3|program_counter\(13) & (!\inst3|program_counter[12]~41\)) # (!\inst3|program_counter\(13) & ((\inst3|program_counter[12]~41\) # (GND)))
-- \inst3|program_counter[13]~44\ = CARRY((!\inst3|program_counter[12]~41\) # (!\inst3|program_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(13),
	datad => VCC,
	cin => \inst3|program_counter[12]~41\,
	combout => \inst3|program_counter[13]~43_combout\,
	cout => \inst3|program_counter[13]~44\);

-- Location: FF_X34_Y9_N27
\inst3|program_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[13]~43_combout\,
	asdata => \inst|Mux3~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(13));

-- Location: FF_X34_Y9_N29
\inst3|program_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[14]~45_combout\,
	asdata => \inst|Mux2~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(14));

-- Location: LCCOMB_X32_Y9_N6
\inst3|Mux243~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux243~0_combout\ = (\inst3|Mux239~0_combout\ & ((\inst3|segment_offset_h_register\(6)) # ((\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst3|Mux239~0_combout\ & (((!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & 
-- \inst3|program_counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|segment_offset_h_register\(6),
	datac => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datad => \inst3|program_counter\(14),
	combout => \inst3|Mux243~0_combout\);

-- Location: FF_X36_Y9_N25
\inst3|tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux2~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(14));

-- Location: FF_X36_Y9_N31
\inst3|stack_pointer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux2~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(14));

-- Location: LCCOMB_X36_Y9_N22
\inst3|Mux243~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux243~1_combout\ = (\inst3|Mux243~0_combout\ & ((\inst3|tmp\(14)) # ((!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst3|Mux243~0_combout\ & (((\inst3|stack_pointer\(14) & \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux243~0_combout\,
	datab => \inst3|tmp\(14),
	datac => \inst3|stack_pointer\(14),
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux243~1_combout\);

-- Location: LCCOMB_X35_Y6_N12
\inst3|Mux243~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux243~5_combout\ = (\inst3|Mux241~3_combout\ & (((\inst3|Mux241~2_combout\)))) # (!\inst3|Mux241~3_combout\ & ((\inst3|Mux241~2_combout\ & ((\inst3|Mux243~1_combout\))) # (!\inst3|Mux241~2_combout\ & (\inst3|Mux243~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux243~4_combout\,
	datab => \inst3|Mux241~3_combout\,
	datac => \inst3|Mux241~2_combout\,
	datad => \inst3|Mux243~1_combout\,
	combout => \inst3|Mux243~5_combout\);

-- Location: LCCOMB_X35_Y10_N22
\inst3|generic_register_d[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_d[14]~feeder_combout\ = \inst|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	combout => \inst3|generic_register_d[14]~feeder_combout\);

-- Location: FF_X35_Y10_N23
\inst3|generic_register_d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_d[14]~feeder_combout\,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(14));

-- Location: LCCOMB_X36_Y10_N6
\inst3|generic_register_c[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_c[14]~feeder_combout\ = \inst|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	combout => \inst3|generic_register_c[14]~feeder_combout\);

-- Location: FF_X36_Y10_N7
\inst3|generic_register_c[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_c[14]~feeder_combout\,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(14));

-- Location: LCCOMB_X35_Y6_N6
\inst3|Mux243~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux243~6_combout\ = (\inst3|Mux243~5_combout\ & (((\inst3|generic_register_d\(14))) # (!\inst3|Mux241~3_combout\))) # (!\inst3|Mux243~5_combout\ & (\inst3|Mux241~3_combout\ & ((\inst3|generic_register_c\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux243~5_combout\,
	datab => \inst3|Mux241~3_combout\,
	datac => \inst3|generic_register_d\(14),
	datad => \inst3|generic_register_c\(14),
	combout => \inst3|Mux243~6_combout\);

-- Location: LCCOMB_X35_Y6_N8
\inst3|Mux243~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux243~7_combout\ = (\inst3|Mux243~6_combout\) # ((\inst3|instruction_register\(6) & (\inst3|instruction_register\(8) & \inst3|Mux239~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|instruction_register\(8),
	datac => \inst3|Mux243~6_combout\,
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux243~7_combout\);

-- Location: LCCOMB_X38_Y7_N20
\inst3|REGISTER_A[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(14) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(14))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux243~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_A\(14),
	datac => \inst3|Mux243~7_combout\,
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(14));

-- Location: LCCOMB_X38_Y7_N0
\inst|LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\inst3|REGISTER_A\(15) & ((\inst3|REGISTER_A\(14)) # (\inst3|REGISTER_A\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_A\(14),
	datac => \inst3|REGISTER_A\(15),
	datad => \inst3|REGISTER_A\(13),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X34_Y7_N10
\inst|tmp2~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~43_combout\ = (\inst|LessThan1~0_combout\ & (\inst|tmp2~41_combout\ & (\inst|LessThan5~0_combout\ & \inst|tmp2~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \inst|tmp2~41_combout\,
	datac => \inst|LessThan5~0_combout\,
	datad => \inst|tmp2~40_combout\,
	combout => \inst|tmp2~43_combout\);

-- Location: LCCOMB_X34_Y7_N6
\inst|tmp2~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~45_combout\ = (\inst|tmp2~43_combout\ & (((!\inst|tmp2~44_combout\)))) # (!\inst|tmp2~43_combout\ & ((\inst|tmp2~44_combout\ & ((!\inst|tmp2~42_combout\) # (!\inst|tmp2~103_combout\))) # (!\inst|tmp2~44_combout\ & ((\inst|tmp2~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~43_combout\,
	datab => \inst|tmp2~103_combout\,
	datac => \inst|tmp2~44_combout\,
	datad => \inst|tmp2~42_combout\,
	combout => \inst|tmp2~45_combout\);

-- Location: LCCOMB_X34_Y7_N16
\inst|tmp2~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~58_combout\ = (\inst|tmp2~45_combout\ & (((!\inst|tmp2~39_combout\) # (!\inst|tmp2~47_combout\)))) # (!\inst|tmp2~45_combout\ & (\inst|tmp2~39_combout\ & ((\inst|tmp2~46_combout\) # (\inst|tmp2~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~45_combout\,
	datab => \inst|tmp2~46_combout\,
	datac => \inst|tmp2~47_combout\,
	datad => \inst|tmp2~39_combout\,
	combout => \inst|tmp2~58_combout\);

-- Location: LCCOMB_X35_Y8_N22
\inst|tmp2~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~68_combout\ = (\inst|tmp2~58_combout\ & (\inst|tmp2~56_combout\ $ (((\inst|tmp2~48_combout\))))) # (!\inst|tmp2~58_combout\ & (((\inst|tmp2~57_combout\ & !\inst|tmp2~48_combout\)) # (!\inst|tmp2~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~58_combout\,
	datab => \inst|tmp2~56_combout\,
	datac => \inst|tmp2~57_combout\,
	datad => \inst|tmp2~48_combout\,
	combout => \inst|tmp2~68_combout\);

-- Location: LCCOMB_X35_Y8_N10
\inst|tmp2~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~80_combout\ = (\inst|tmp2~68_combout\ & (((!\inst|tmp2~59_combout\)) # (!\inst|tmp2~67_combout\))) # (!\inst|tmp2~68_combout\ & (\inst|tmp2~67_combout\ & ((\inst|tmp2~59_combout\) # (!\inst|tmp2~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~68_combout\,
	datab => \inst|tmp2~67_combout\,
	datac => \inst|tmp2~69_combout\,
	datad => \inst|tmp2~59_combout\,
	combout => \inst|tmp2~80_combout\);

-- Location: LCCOMB_X35_Y8_N6
\inst|tmp2~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~81_combout\ = (\inst|tmp2~80_combout\ & (\inst|tmp2~70_combout\ & ((!\inst|tmp2~79_combout\) # (!\inst|tmp2~78_combout\)))) # (!\inst|tmp2~80_combout\ & (\inst|tmp2~78_combout\ & ((\inst|tmp2~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~80_combout\,
	datab => \inst|tmp2~78_combout\,
	datac => \inst|tmp2~70_combout\,
	datad => \inst|tmp2~79_combout\,
	combout => \inst|tmp2~81_combout\);

-- Location: LCCOMB_X35_Y8_N24
\inst|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|tmp2~81_combout\) # ((!\inst|tmp2~91_combout\ & ((!\inst|tmp2~89_combout\) # (!\inst|tmp2~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~81_combout\,
	datab => \inst|tmp2~90_combout\,
	datac => \inst|tmp2~91_combout\,
	datad => \inst|tmp2~89_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y8_N12
\inst|Mux6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~12_combout\ = (\inst1|Mux13~0_combout\ & ((\inst1|Mux14~0_combout\) # (!\inst|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst1|Mux14~0_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst|Mux6~12_combout\);

-- Location: LCCOMB_X32_Y8_N12
\inst|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = (\inst1|Mux14~0_combout\ & (\inst3|REGISTER_B\(10) & !\inst1|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux14~0_combout\,
	datab => \inst3|REGISTER_B\(10),
	datad => \inst1|Mux13~0_combout\,
	combout => \inst|Mux6~2_combout\);

-- Location: LCCOMB_X35_Y8_N4
\inst|Add31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add31~0_combout\ = \inst|tmp2~89_combout\ $ (\inst|tmp2~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tmp2~89_combout\,
	datad => \inst|tmp2~90_combout\,
	combout => \inst|Add31~0_combout\);

-- Location: LCCOMB_X35_Y8_N16
\inst|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (\inst1|Mux13~0_combout\ & (!\inst1|Mux14~0_combout\ & (!\inst|Add31~0_combout\ & \inst|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst1|Mux14~0_combout\,
	datac => \inst|Add31~0_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst|Mux6~1_combout\);

-- Location: LCCOMB_X31_Y11_N18
\inst3|Mux213~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux213~0_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(1) & \inst3|program_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst3|instruction_register\(1),
	datad => \inst3|program_counter\(1),
	combout => \inst3|Mux213~0_combout\);

-- Location: FF_X31_Y11_N9
\inst3|segment_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux15~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(1));

-- Location: LCCOMB_X34_Y10_N28
\inst3|tmp[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|tmp[1]~feeder_combout\ = \inst|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux15~1_combout\,
	combout => \inst3|tmp[1]~feeder_combout\);

-- Location: FF_X34_Y10_N29
\inst3|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|tmp[1]~feeder_combout\,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(1));

-- Location: FF_X34_Y10_N5
\inst3|stack_pointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux15~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(1));

-- Location: LCCOMB_X34_Y10_N14
\inst3|Mux213~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux213~3_combout\ = (\inst3|instruction_register\(1) & (((\inst3|instruction_register\(2)) # (\inst3|stack_pointer\(1))) # (!\inst1|state.handle_args_as_registers~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst3|instruction_register\(2),
	datac => \inst3|stack_pointer\(1),
	datad => \inst3|instruction_register\(1),
	combout => \inst3|Mux213~3_combout\);

-- Location: LCCOMB_X29_Y9_N22
\inst3|segment_offset_l_register[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|segment_offset_l_register[1]~feeder_combout\ = \inst|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux15~1_combout\,
	combout => \inst3|segment_offset_l_register[1]~feeder_combout\);

-- Location: FF_X29_Y9_N23
\inst3|segment_offset_l_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|segment_offset_l_register[1]~feeder_combout\,
	ena => \inst3|Mux83~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_l_register\(1));

-- Location: LCCOMB_X34_Y10_N6
\inst3|Mux213~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux213~4_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|Mux213~3_combout\ & (\inst3|tmp\(1))) # (!\inst3|Mux213~3_combout\ & ((\inst3|segment_offset_l_register\(1)))))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & 
-- (((\inst3|Mux213~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datab => \inst3|tmp\(1),
	datac => \inst3|Mux213~3_combout\,
	datad => \inst3|segment_offset_l_register\(1),
	combout => \inst3|Mux213~4_combout\);

-- Location: FF_X31_Y11_N3
\inst3|generic_register_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux15~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(1));

-- Location: FF_X32_Y8_N31
\inst3|generic_register_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux15~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(1));

-- Location: LCCOMB_X31_Y8_N18
\inst3|generic_register_a[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_a[1]~1_combout\ = !\inst|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~1_combout\,
	combout => \inst3|generic_register_a[1]~1_combout\);

-- Location: FF_X31_Y8_N19
\inst3|generic_register_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_a[1]~1_combout\,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(1));

-- Location: FF_X31_Y8_N21
\inst3|generic_register_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux15~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(1));

-- Location: LCCOMB_X31_Y8_N20
\inst3|Mux213~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux213~1_combout\ = (\inst3|Mux226~5_combout\ & (((\inst3|generic_register_c\(1)) # (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst3|Mux226~5_combout\ & (!\inst3|generic_register_a\(1) & ((!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|generic_register_a\(1),
	datac => \inst3|generic_register_c\(1),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux213~1_combout\);

-- Location: LCCOMB_X31_Y11_N28
\inst3|Mux213~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux213~2_combout\ = (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & ((\inst3|Mux213~1_combout\ & (\inst3|generic_register_d\(1))) # (!\inst3|Mux213~1_combout\ & ((\inst3|generic_register_b\(1)))))) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & 
-- (((\inst3|Mux213~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datab => \inst3|generic_register_d\(1),
	datac => \inst3|generic_register_b\(1),
	datad => \inst3|Mux213~1_combout\,
	combout => \inst3|Mux213~2_combout\);

-- Location: LCCOMB_X31_Y11_N12
\inst3|Mux213~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux213~5_combout\ = (\inst3|Mux214~1_combout\ & (\inst3|Mux226~7_combout\ & ((\inst3|Mux213~2_combout\)))) # (!\inst3|Mux214~1_combout\ & (((\inst3|Mux213~4_combout\)) # (!\inst3|Mux226~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux214~1_combout\,
	datab => \inst3|Mux226~7_combout\,
	datac => \inst3|Mux213~4_combout\,
	datad => \inst3|Mux213~2_combout\,
	combout => \inst3|Mux213~5_combout\);

-- Location: LCCOMB_X31_Y11_N8
\inst3|Mux213~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux213~6_combout\ = (\inst3|Mux214~0_combout\ & ((\inst3|Mux213~5_combout\ & (\inst3|Mux213~0_combout\)) # (!\inst3|Mux213~5_combout\ & ((\inst3|segment_register\(1)))))) # (!\inst3|Mux214~0_combout\ & (((\inst3|Mux213~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux213~0_combout\,
	datab => \inst3|Mux214~0_combout\,
	datac => \inst3|segment_register\(1),
	datad => \inst3|Mux213~5_combout\,
	combout => \inst3|Mux213~6_combout\);

-- Location: LCCOMB_X32_Y9_N12
\inst3|Mux213~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux213~7_combout\ = (\inst3|Mux214~2_combout\ & (((!\inst3|Mux226~5_combout\ & \inst3|flag_register\(1))))) # (!\inst3|Mux214~2_combout\ & (\inst3|Mux213~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux213~6_combout\,
	datab => \inst3|Mux226~5_combout\,
	datac => \inst3|flag_register\(1),
	datad => \inst3|Mux214~2_combout\,
	combout => \inst3|Mux213~7_combout\);

-- Location: LCCOMB_X32_Y9_N4
\inst3|REGISTER_B[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(1) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(1))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux213~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_B\(1),
	datac => \inst3|Mux228~0clkctrl_outclk\,
	datad => \inst3|Mux213~7_combout\,
	combout => \inst3|REGISTER_B\(1));

-- Location: LCCOMB_X31_Y11_N2
\inst3|Mux212~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux212~0_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(1) & \inst3|program_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst3|instruction_register\(1),
	datad => \inst3|program_counter\(0),
	combout => \inst3|Mux212~0_combout\);

-- Location: FF_X31_Y11_N15
\inst3|segment_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(0));

-- Location: LCCOMB_X32_Y8_N16
\inst3|generic_register_b[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_b[0]~feeder_combout\ = \inst|Mux16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux16~0_combout\,
	combout => \inst3|generic_register_b[0]~feeder_combout\);

-- Location: FF_X32_Y8_N17
\inst3|generic_register_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_b[0]~feeder_combout\,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(0));

-- Location: FF_X31_Y11_N5
\inst3|generic_register_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(0));

-- Location: FF_X31_Y8_N5
\inst3|generic_register_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(0));

-- Location: FF_X31_Y8_N3
\inst3|generic_register_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(0));

-- Location: LCCOMB_X31_Y8_N2
\inst3|Mux212~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux212~1_combout\ = (\inst3|Mux226~5_combout\ & ((\inst3|generic_register_c\(0)) # ((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst3|Mux226~5_combout\ & (((\inst3|generic_register_a\(0) & !\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|generic_register_c\(0),
	datac => \inst3|generic_register_a\(0),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux212~1_combout\);

-- Location: LCCOMB_X31_Y11_N4
\inst3|Mux212~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux212~2_combout\ = (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & ((\inst3|Mux212~1_combout\ & ((\inst3|generic_register_d\(0)))) # (!\inst3|Mux212~1_combout\ & (\inst3|generic_register_b\(0))))) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & 
-- (((\inst3|Mux212~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datab => \inst3|generic_register_b\(0),
	datac => \inst3|generic_register_d\(0),
	datad => \inst3|Mux212~1_combout\,
	combout => \inst3|Mux212~2_combout\);

-- Location: LCCOMB_X29_Y9_N28
\inst3|segment_offset_l_register[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|segment_offset_l_register[0]~feeder_combout\ = \inst|Mux16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux16~0_combout\,
	combout => \inst3|segment_offset_l_register[0]~feeder_combout\);

-- Location: FF_X29_Y9_N29
\inst3|segment_offset_l_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|segment_offset_l_register[0]~feeder_combout\,
	ena => \inst3|Mux83~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_l_register\(0));

-- Location: FF_X30_Y9_N15
\inst3|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(0));

-- Location: FF_X30_Y9_N13
\inst3|stack_pointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(0));

-- Location: LCCOMB_X30_Y9_N12
\inst3|Mux212~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux212~3_combout\ = (\inst3|Mux226~5_combout\ & (((\inst3|stack_pointer\(0)) # (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)))) # (!\inst3|Mux226~5_combout\ & (\inst3|instruction_register\(0) & ((!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|instruction_register\(0),
	datac => \inst3|stack_pointer\(0),
	datad => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	combout => \inst3|Mux212~3_combout\);

-- Location: LCCOMB_X30_Y9_N14
\inst3|Mux212~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux212~4_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|Mux212~3_combout\ & ((\inst3|tmp\(0)))) # (!\inst3|Mux212~3_combout\ & (\inst3|segment_offset_l_register\(0))))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & 
-- (((\inst3|Mux212~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datab => \inst3|segment_offset_l_register\(0),
	datac => \inst3|tmp\(0),
	datad => \inst3|Mux212~3_combout\,
	combout => \inst3|Mux212~4_combout\);

-- Location: LCCOMB_X31_Y11_N6
\inst3|Mux212~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux212~5_combout\ = (\inst3|Mux214~1_combout\ & (\inst3|Mux226~7_combout\ & (\inst3|Mux212~2_combout\))) # (!\inst3|Mux214~1_combout\ & (((\inst3|Mux212~4_combout\)) # (!\inst3|Mux226~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux214~1_combout\,
	datab => \inst3|Mux226~7_combout\,
	datac => \inst3|Mux212~2_combout\,
	datad => \inst3|Mux212~4_combout\,
	combout => \inst3|Mux212~5_combout\);

-- Location: LCCOMB_X31_Y11_N14
\inst3|Mux212~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux212~6_combout\ = (\inst3|Mux214~0_combout\ & ((\inst3|Mux212~5_combout\ & (\inst3|Mux212~0_combout\)) # (!\inst3|Mux212~5_combout\ & ((\inst3|segment_register\(0)))))) # (!\inst3|Mux214~0_combout\ & (((\inst3|Mux212~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux212~0_combout\,
	datab => \inst3|Mux214~0_combout\,
	datac => \inst3|segment_register\(0),
	datad => \inst3|Mux212~5_combout\,
	combout => \inst3|Mux212~6_combout\);

-- Location: FF_X32_Y9_N11
\inst3|flag_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst3|Mux83~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|flag_register\(0));

-- Location: LCCOMB_X32_Y9_N10
\inst3|Mux212~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux212~7_combout\ = (\inst3|Mux214~2_combout\ & (((\inst3|Mux226~5_combout\) # (\inst3|flag_register\(0))))) # (!\inst3|Mux214~2_combout\ & (\inst3|Mux212~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux212~6_combout\,
	datab => \inst3|Mux226~5_combout\,
	datac => \inst3|flag_register\(0),
	datad => \inst3|Mux214~2_combout\,
	combout => \inst3|Mux212~7_combout\);

-- Location: LCCOMB_X32_Y9_N26
\inst3|REGISTER_B[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(0) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(0))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux212~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(0),
	datac => \inst3|Mux228~0clkctrl_outclk\,
	datad => \inst3|Mux212~7_combout\,
	combout => \inst3|REGISTER_B\(0));

-- Location: LCCOMB_X38_Y8_N20
\inst|ShiftLeft0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~0_combout\ = (\inst3|REGISTER_B\(0) & (((\inst3|REGISTER_A\(3)) # (!\inst3|REGISTER_B\(1))))) # (!\inst3|REGISTER_B\(0) & (\inst3|REGISTER_A\(4) & (\inst3|REGISTER_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(4),
	datab => \inst3|REGISTER_B\(0),
	datac => \inst3|REGISTER_B\(1),
	datad => \inst3|REGISTER_A\(3),
	combout => \inst|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X38_Y8_N30
\inst|ShiftLeft0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~1_combout\ = (\inst3|REGISTER_B\(1) & (\inst|ShiftLeft0~0_combout\)) # (!\inst3|REGISTER_B\(1) & ((\inst|ShiftLeft0~0_combout\ & (\inst3|REGISTER_A\(5))) # (!\inst|ShiftLeft0~0_combout\ & ((\inst3|REGISTER_A\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(1),
	datab => \inst|ShiftLeft0~0_combout\,
	datac => \inst3|REGISTER_A\(5),
	datad => \inst3|REGISTER_A\(6),
	combout => \inst|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X38_Y8_N8
\inst|ShiftLeft0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~2_combout\ = (\inst3|REGISTER_B\(1) & (((\inst3|REGISTER_B\(0))))) # (!\inst3|REGISTER_B\(1) & ((\inst3|REGISTER_B\(0) & ((\inst3|REGISTER_A\(9)))) # (!\inst3|REGISTER_B\(0) & (\inst3|REGISTER_A\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(1),
	datab => \inst3|REGISTER_A\(10),
	datac => \inst3|REGISTER_A\(9),
	datad => \inst3|REGISTER_B\(0),
	combout => \inst|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X38_Y8_N22
\inst|ShiftLeft0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~3_combout\ = (\inst3|REGISTER_B\(1) & ((\inst|ShiftLeft0~2_combout\ & ((\inst3|REGISTER_A\(7)))) # (!\inst|ShiftLeft0~2_combout\ & (\inst3|REGISTER_A\(8))))) # (!\inst3|REGISTER_B\(1) & (\inst|ShiftLeft0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(1),
	datab => \inst|ShiftLeft0~2_combout\,
	datac => \inst3|REGISTER_A\(8),
	datad => \inst3|REGISTER_A\(7),
	combout => \inst|ShiftLeft0~3_combout\);

-- Location: FF_X31_Y9_N23
\inst3|flag_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|flag_register\(2));

-- Location: FF_X31_Y9_N25
\inst3|segment_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(2));

-- Location: FF_X30_Y10_N19
\inst3|generic_register_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(2));

-- Location: LCCOMB_X30_Y10_N26
\inst3|generic_register_b[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_b[2]~feeder_combout\ = \inst|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux14~1_combout\,
	combout => \inst3|generic_register_b[2]~feeder_combout\);

-- Location: FF_X30_Y10_N27
\inst3|generic_register_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_b[2]~feeder_combout\,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(2));

-- Location: FF_X31_Y10_N1
\inst3|generic_register_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(2));

-- Location: LCCOMB_X30_Y10_N24
\inst3|Mux214~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~4_combout\ = (\inst3|Mux226~5_combout\ & (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)) # (!\inst3|Mux226~5_combout\ & ((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & (\inst3|generic_register_b\(2))) # 
-- (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & ((\inst3|generic_register_a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datac => \inst3|generic_register_b\(2),
	datad => \inst3|generic_register_a\(2),
	combout => \inst3|Mux214~4_combout\);

-- Location: FF_X31_Y8_N11
\inst3|generic_register_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(2));

-- Location: LCCOMB_X31_Y8_N24
\inst3|Mux214~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~5_combout\ = (\inst3|Mux226~5_combout\ & ((\inst3|Mux214~4_combout\ & (\inst3|generic_register_d\(2))) # (!\inst3|Mux214~4_combout\ & ((\inst3|generic_register_c\(2)))))) # (!\inst3|Mux226~5_combout\ & (((\inst3|Mux214~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|generic_register_d\(2),
	datac => \inst3|Mux214~4_combout\,
	datad => \inst3|generic_register_c\(2),
	combout => \inst3|Mux214~5_combout\);

-- Location: FF_X30_Y8_N25
\inst3|segment_offset_l_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_offset_l_register\(2));

-- Location: LCCOMB_X30_Y8_N24
\inst3|Mux214~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~6_combout\ = (\inst3|instruction_register\(2) & ((\inst3|instruction_register\(1)) # ((\inst3|segment_offset_l_register\(2)) # (!\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(1),
	datab => \inst3|instruction_register\(2),
	datac => \inst3|segment_offset_l_register\(2),
	datad => \inst1|state.handle_args_as_registers~q\,
	combout => \inst3|Mux214~6_combout\);

-- Location: FF_X30_Y9_N31
\inst3|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|tmp\(2));

-- Location: FF_X30_Y9_N1
\inst3|stack_pointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stack_pointer\(2));

-- Location: LCCOMB_X30_Y8_N10
\inst3|Mux214~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~7_combout\ = (\inst3|Mux226~5_combout\ & ((\inst3|Mux214~6_combout\ & (\inst3|tmp\(2))) # (!\inst3|Mux214~6_combout\ & ((\inst3|stack_pointer\(2)))))) # (!\inst3|Mux226~5_combout\ & (\inst3|Mux214~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|Mux214~6_combout\,
	datac => \inst3|tmp\(2),
	datad => \inst3|stack_pointer\(2),
	combout => \inst3|Mux214~7_combout\);

-- Location: LCCOMB_X30_Y8_N28
\inst3|Mux214~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~8_combout\ = (\inst3|Mux214~1_combout\ & (\inst3|Mux214~5_combout\ & ((\inst3|Mux226~7_combout\)))) # (!\inst3|Mux214~1_combout\ & (((\inst3|Mux214~7_combout\) # (!\inst3|Mux226~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux214~1_combout\,
	datab => \inst3|Mux214~5_combout\,
	datac => \inst3|Mux214~7_combout\,
	datad => \inst3|Mux226~7_combout\,
	combout => \inst3|Mux214~8_combout\);

-- Location: LCCOMB_X30_Y8_N18
\inst3|Mux214~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~3_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(1) & \inst3|program_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(1),
	datad => \inst3|program_counter\(2),
	combout => \inst3|Mux214~3_combout\);

-- Location: LCCOMB_X30_Y8_N14
\inst3|Mux214~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~9_combout\ = (\inst3|Mux214~8_combout\ & (((\inst3|Mux214~3_combout\) # (!\inst3|Mux214~0_combout\)))) # (!\inst3|Mux214~8_combout\ & (\inst3|segment_register\(2) & (\inst3|Mux214~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_register\(2),
	datab => \inst3|Mux214~8_combout\,
	datac => \inst3|Mux214~0_combout\,
	datad => \inst3|Mux214~3_combout\,
	combout => \inst3|Mux214~9_combout\);

-- Location: LCCOMB_X30_Y8_N16
\inst3|Mux214~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux214~10_combout\ = (\inst3|Mux214~2_combout\ & ((\inst3|Mux226~5_combout\) # ((\inst3|flag_register\(2))))) # (!\inst3|Mux214~2_combout\ & (((\inst3|Mux214~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|flag_register\(2),
	datac => \inst3|Mux214~9_combout\,
	datad => \inst3|Mux214~2_combout\,
	combout => \inst3|Mux214~10_combout\);

-- Location: LCCOMB_X30_Y8_N30
\inst3|REGISTER_B[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(2) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(2))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux214~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(2),
	datab => \inst3|Mux214~10_combout\,
	datac => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(2));

-- Location: LCCOMB_X35_Y9_N20
\inst3|Mux229~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux229~0_combout\ = (\inst3|instruction_register\(6) & (\inst3|program_counter\(0) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst1|state.handle_arg_as_register~q\,
	datad => \inst3|program_counter\(0),
	combout => \inst3|Mux229~0_combout\);

-- Location: LCCOMB_X31_Y8_N4
\inst3|Mux229~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux229~1_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & (\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\)) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (\inst3|generic_register_c\(0))) # 
-- (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & ((\inst3|generic_register_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datac => \inst3|generic_register_c\(0),
	datad => \inst3|generic_register_a\(0),
	combout => \inst3|Mux229~1_combout\);

-- Location: LCCOMB_X32_Y8_N4
\inst3|Mux229~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux229~2_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|Mux229~1_combout\ & (\inst3|generic_register_d\(0))) # (!\inst3|Mux229~1_combout\ & ((\inst3|generic_register_b\(0)))))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & 
-- (\inst3|Mux229~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datab => \inst3|Mux229~1_combout\,
	datac => \inst3|generic_register_d\(0),
	datad => \inst3|generic_register_b\(0),
	combout => \inst3|Mux229~2_combout\);

-- Location: LCCOMB_X29_Y9_N0
\inst3|Mux229~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux229~3_combout\ = (\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (((\inst3|stack_pointer\(0)) # (\inst3|Mux239~0_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (\inst3|instruction_register\(0) & ((!\inst3|Mux239~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(0),
	datab => \inst3|stack_pointer\(0),
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux229~3_combout\);

-- Location: LCCOMB_X29_Y9_N14
\inst3|Mux229~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux229~4_combout\ = (\inst3|Mux239~0_combout\ & ((\inst3|Mux229~3_combout\ & (\inst3|tmp\(0))) # (!\inst3|Mux229~3_combout\ & ((\inst3|segment_offset_l_register\(0)))))) # (!\inst3|Mux239~0_combout\ & (\inst3|Mux229~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|Mux229~3_combout\,
	datac => \inst3|tmp\(0),
	datad => \inst3|segment_offset_l_register\(0),
	combout => \inst3|Mux229~4_combout\);

-- Location: LCCOMB_X31_Y9_N30
\inst3|Mux229~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux229~5_combout\ = (\inst3|Mux230~2_combout\ & (\inst3|Mux230~0_combout\ & (\inst3|Mux229~2_combout\))) # (!\inst3|Mux230~2_combout\ & (((\inst3|Mux229~4_combout\)) # (!\inst3|Mux230~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux230~2_combout\,
	datab => \inst3|Mux230~0_combout\,
	datac => \inst3|Mux229~2_combout\,
	datad => \inst3|Mux229~4_combout\,
	combout => \inst3|Mux229~5_combout\);

-- Location: LCCOMB_X31_Y9_N0
\inst3|Mux229~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux229~6_combout\ = (\inst3|Mux230~1_combout\ & ((\inst3|Mux229~5_combout\ & ((\inst3|Mux229~0_combout\))) # (!\inst3|Mux229~5_combout\ & (\inst3|segment_register\(0))))) # (!\inst3|Mux230~1_combout\ & (((\inst3|Mux229~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_register\(0),
	datab => \inst3|Mux230~1_combout\,
	datac => \inst3|Mux229~0_combout\,
	datad => \inst3|Mux229~5_combout\,
	combout => \inst3|Mux229~6_combout\);

-- Location: LCCOMB_X31_Y9_N10
\inst3|Mux229~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux229~7_combout\ = (\inst3|Mux230~3_combout\ & (((\inst3|flag_register\(0)) # (\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\)))) # (!\inst3|Mux230~3_combout\ & (\inst3|Mux229~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux229~6_combout\,
	datab => \inst3|flag_register\(0),
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst3|Mux230~3_combout\,
	combout => \inst3|Mux229~7_combout\);

-- Location: LCCOMB_X31_Y9_N26
\inst3|REGISTER_A[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(0) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(0))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux229~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(0),
	datac => \inst3|Mux229~7_combout\,
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(0));

-- Location: LCCOMB_X38_Y8_N0
\inst|ShiftLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~4_combout\ = (\inst3|REGISTER_B\(1) & (((\inst3|REGISTER_A\(0)) # (\inst3|REGISTER_B\(0))))) # (!\inst3|REGISTER_B\(1) & (\inst3|REGISTER_A\(2) & ((!\inst3|REGISTER_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(1),
	datab => \inst3|REGISTER_A\(2),
	datac => \inst3|REGISTER_A\(0),
	datad => \inst3|REGISTER_B\(0),
	combout => \inst|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X37_Y8_N18
\inst|ShiftLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~5_combout\ = (!\inst3|REGISTER_B\(2) & ((\inst|ShiftLeft0~4_combout\ & (!\inst3|REGISTER_B\(0))) # (!\inst|ShiftLeft0~4_combout\ & (\inst3|REGISTER_B\(0) & \inst3|REGISTER_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(2),
	datab => \inst|ShiftLeft0~4_combout\,
	datac => \inst3|REGISTER_B\(0),
	datad => \inst3|REGISTER_A\(1),
	combout => \inst|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X36_Y8_N30
\inst|Mux6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~9_combout\ = (\inst1|Mux14~0_combout\ & ((\inst3|REGISTER_B\(3)) # ((\inst3|REGISTER_B\(2)) # (\inst|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(3),
	datab => \inst3|REGISTER_B\(2),
	datac => \inst1|Mux14~0_combout\,
	datad => \inst|Mux6~6_combout\,
	combout => \inst|Mux6~9_combout\);

-- Location: LCCOMB_X36_Y8_N24
\inst|Mux6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~8_combout\ = ((\inst3|REGISTER_B\(3) & !\inst|Mux6~6_combout\)) # (!\inst1|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(3),
	datac => \inst1|Mux14~0_combout\,
	datad => \inst|Mux6~6_combout\,
	combout => \inst|Mux6~8_combout\);

-- Location: LCCOMB_X36_Y8_N28
\inst|Mux6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~10_combout\ = (\inst|Mux6~9_combout\ & (\inst|ShiftLeft0~5_combout\ & ((\inst|Mux6~8_combout\)))) # (!\inst|Mux6~9_combout\ & (((!\inst|Mux6~8_combout\) # (!\inst|tmp2~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftLeft0~5_combout\,
	datab => \inst|tmp2~90_combout\,
	datac => \inst|Mux6~9_combout\,
	datad => \inst|Mux6~8_combout\,
	combout => \inst|Mux6~10_combout\);

-- Location: LCCOMB_X36_Y8_N6
\inst|Mux6~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~11_combout\ = (\inst|Mux6~7_combout\ & (((\inst|Mux6~10_combout\)))) # (!\inst|Mux6~7_combout\ & ((\inst|Mux6~10_combout\ & ((\inst|ShiftLeft0~3_combout\))) # (!\inst|Mux6~10_combout\ & (\inst|ShiftLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~7_combout\,
	datab => \inst|ShiftLeft0~1_combout\,
	datac => \inst|ShiftLeft0~3_combout\,
	datad => \inst|Mux6~10_combout\,
	combout => \inst|Mux6~11_combout\);

-- Location: LCCOMB_X35_Y8_N30
\inst|Mux6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~13_combout\ = (\inst|Mux6~2_combout\) # ((\inst|Mux6~1_combout\) # ((\inst|Mux6~12_combout\ & \inst|Mux6~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~12_combout\,
	datab => \inst|Mux6~2_combout\,
	datac => \inst|Mux6~1_combout\,
	datad => \inst|Mux6~11_combout\,
	combout => \inst|Mux6~13_combout\);

-- Location: FF_X31_Y8_N9
\inst3|generic_register_a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux6~13_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(10));

-- Location: LCCOMB_X32_Y10_N22
\inst3|Mux222~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux222~2_combout\ = (\inst3|instruction_register\(0) & (\inst1|state.handle_args_as_registers~q\ & \inst3|instruction_register\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(0),
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(10),
	combout => \inst3|Mux222~2_combout\);

-- Location: LCCOMB_X32_Y10_N10
\inst3|Mux222~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux222~3_combout\ = (\inst3|Mux226~3_combout\ & ((\inst3|Mux226~4_combout\ & ((\inst3|segment_register\(10)))) # (!\inst3|Mux226~4_combout\ & (\inst3|Mux222~2_combout\)))) # (!\inst3|Mux226~3_combout\ & (((!\inst3|Mux226~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux222~2_combout\,
	datab => \inst3|segment_register\(10),
	datac => \inst3|Mux226~3_combout\,
	datad => \inst3|Mux226~4_combout\,
	combout => \inst3|Mux222~3_combout\);

-- Location: LCCOMB_X31_Y8_N14
\inst3|Mux222~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux222~4_combout\ = (\inst3|Mux222~3_combout\ & ((\inst3|generic_register_a\(10)) # ((!\inst3|Mux226~2_combout\)))) # (!\inst3|Mux222~3_combout\ & (((\inst3|Mux226~2_combout\ & \inst3|generic_register_b\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_a\(10),
	datab => \inst3|Mux222~3_combout\,
	datac => \inst3|Mux226~2_combout\,
	datad => \inst3|generic_register_b\(10),
	combout => \inst3|Mux222~4_combout\);

-- Location: LCCOMB_X29_Y8_N24
\inst3|Mux222~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux222~5_combout\ = (\inst3|Mux226~0_combout\ & (((\inst3|Mux226~1_combout\)))) # (!\inst3|Mux226~0_combout\ & ((\inst3|Mux226~1_combout\ & ((\inst3|generic_register_c\(10)))) # (!\inst3|Mux226~1_combout\ & (\inst3|Mux222~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~0_combout\,
	datab => \inst3|Mux222~4_combout\,
	datac => \inst3|generic_register_c\(10),
	datad => \inst3|Mux226~1_combout\,
	combout => \inst3|Mux222~5_combout\);

-- Location: LCCOMB_X34_Y10_N10
\inst3|Mux222~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux222~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & ((\inst3|stack_pointer\(10)))) # 
-- (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & (\inst3|program_counter\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(10),
	datab => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datac => \inst3|stack_pointer\(10),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux222~0_combout\);

-- Location: LCCOMB_X34_Y10_N2
\inst3|Mux222~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux222~1_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|Mux222~0_combout\ & ((\inst3|tmp\(10)))) # (!\inst3|Mux222~0_combout\ & (\inst3|segment_offset_h_register\(2))))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & 
-- (((\inst3|Mux222~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_offset_h_register\(2),
	datab => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datac => \inst3|Mux222~0_combout\,
	datad => \inst3|tmp\(10),
	combout => \inst3|Mux222~1_combout\);

-- Location: LCCOMB_X29_Y8_N14
\inst3|Mux222~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux222~6_combout\ = (\inst3|Mux222~5_combout\ & ((\inst3|generic_register_d\(10)) # ((!\inst3|Mux226~0_combout\)))) # (!\inst3|Mux222~5_combout\ & (((\inst3|Mux226~0_combout\ & \inst3|Mux222~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux222~5_combout\,
	datab => \inst3|generic_register_d\(10),
	datac => \inst3|Mux226~0_combout\,
	datad => \inst3|Mux222~1_combout\,
	combout => \inst3|Mux222~6_combout\);

-- Location: LCCOMB_X29_Y8_N4
\inst3|Mux222~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux222~7_combout\ = (\inst3|Mux222~6_combout\) # ((\inst3|instruction_register\(2) & (\inst3|instruction_register\(3) & \inst3|Mux226~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux222~6_combout\,
	datab => \inst3|instruction_register\(2),
	datac => \inst3|instruction_register\(3),
	datad => \inst3|Mux226~5_combout\,
	combout => \inst3|Mux222~7_combout\);

-- Location: LCCOMB_X29_Y8_N30
\inst3|REGISTER_B[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(10) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|REGISTER_B\(10)))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|Mux222~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mux222~7_combout\,
	datac => \inst3|REGISTER_B\(10),
	datad => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(10));

-- Location: LCCOMB_X34_Y10_N0
\inst3|Mux221~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux221~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|segment_offset_h_register\(1)) # ((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & 
-- (((!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & \inst3|program_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_offset_h_register\(1),
	datab => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datac => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datad => \inst3|program_counter\(9),
	combout => \inst3|Mux221~0_combout\);

-- Location: LCCOMB_X34_Y10_N26
\inst3|Mux221~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux221~1_combout\ = (\inst3|Mux221~0_combout\ & ((\inst3|tmp\(9)) # ((!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst3|Mux221~0_combout\ & (((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & \inst3|stack_pointer\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux221~0_combout\,
	datab => \inst3|tmp\(9),
	datac => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datad => \inst3|stack_pointer\(9),
	combout => \inst3|Mux221~1_combout\);

-- Location: LCCOMB_X35_Y9_N0
\inst3|Mux221~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux221~2_combout\ = (\inst3|instruction_register\(0) & (\inst3|instruction_register\(9) & \inst1|state.handle_args_as_registers~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(0),
	datac => \inst3|instruction_register\(9),
	datad => \inst1|state.handle_args_as_registers~q\,
	combout => \inst3|Mux221~2_combout\);

-- Location: LCCOMB_X35_Y9_N26
\inst3|Mux221~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux221~3_combout\ = (\inst3|Mux226~3_combout\ & ((\inst3|Mux226~4_combout\ & (\inst3|segment_register\(9))) # (!\inst3|Mux226~4_combout\ & ((\inst3|Mux221~2_combout\))))) # (!\inst3|Mux226~3_combout\ & (((!\inst3|Mux226~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~3_combout\,
	datab => \inst3|segment_register\(9),
	datac => \inst3|Mux221~2_combout\,
	datad => \inst3|Mux226~4_combout\,
	combout => \inst3|Mux221~3_combout\);

-- Location: LCCOMB_X35_Y9_N30
\inst3|Mux221~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux221~4_combout\ = (\inst3|Mux221~3_combout\ & (((\inst3|generic_register_a\(9)) # (!\inst3|Mux226~2_combout\)))) # (!\inst3|Mux221~3_combout\ & (\inst3|generic_register_b\(9) & ((\inst3|Mux226~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux221~3_combout\,
	datab => \inst3|generic_register_b\(9),
	datac => \inst3|generic_register_a\(9),
	datad => \inst3|Mux226~2_combout\,
	combout => \inst3|Mux221~4_combout\);

-- Location: LCCOMB_X36_Y8_N0
\inst3|Mux221~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux221~5_combout\ = (\inst3|Mux226~1_combout\ & (((\inst3|generic_register_c\(9)) # (\inst3|Mux226~0_combout\)))) # (!\inst3|Mux226~1_combout\ & (\inst3|Mux221~4_combout\ & ((!\inst3|Mux226~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~1_combout\,
	datab => \inst3|Mux221~4_combout\,
	datac => \inst3|generic_register_c\(9),
	datad => \inst3|Mux226~0_combout\,
	combout => \inst3|Mux221~5_combout\);

-- Location: LCCOMB_X36_Y8_N4
\inst3|Mux221~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux221~6_combout\ = (\inst3|Mux226~0_combout\ & ((\inst3|Mux221~5_combout\ & ((\inst3|generic_register_d\(9)))) # (!\inst3|Mux221~5_combout\ & (\inst3|Mux221~1_combout\)))) # (!\inst3|Mux226~0_combout\ & (((\inst3|Mux221~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~0_combout\,
	datab => \inst3|Mux221~1_combout\,
	datac => \inst3|Mux221~5_combout\,
	datad => \inst3|generic_register_d\(9),
	combout => \inst3|Mux221~6_combout\);

-- Location: LCCOMB_X36_Y8_N26
\inst3|Mux221~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux221~7_combout\ = (\inst3|Mux221~6_combout\ & (((!\inst3|instruction_register\(2)) # (!\inst3|Mux226~5_combout\)) # (!\inst3|instruction_register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(3),
	datab => \inst3|Mux221~6_combout\,
	datac => \inst3|Mux226~5_combout\,
	datad => \inst3|instruction_register\(2),
	combout => \inst3|Mux221~7_combout\);

-- Location: LCCOMB_X36_Y8_N2
\inst3|REGISTER_B[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(9) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|REGISTER_B\(9)))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|Mux221~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux221~7_combout\,
	datab => \inst3|REGISTER_B\(9),
	datac => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(9));

-- Location: LCCOMB_X32_Y8_N24
\inst|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~4_combout\ = (\inst3|REGISTER_B\(8)) # ((\inst3|REGISTER_B\(10)) # ((\inst3|REGISTER_B\(11)) # (\inst3|REGISTER_B\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(8),
	datab => \inst3|REGISTER_B\(10),
	datac => \inst3|REGISTER_B\(11),
	datad => \inst3|REGISTER_B\(9),
	combout => \inst|Mux6~4_combout\);

-- Location: LCCOMB_X36_Y10_N28
\inst|Mux6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~5_combout\ = (\inst3|REGISTER_B\(14)) # ((\inst3|REGISTER_B\(13)) # ((\inst3|REGISTER_B\(15)) # (\inst3|REGISTER_B\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(14),
	datab => \inst3|REGISTER_B\(13),
	datac => \inst3|REGISTER_B\(15),
	datad => \inst3|REGISTER_B\(12),
	combout => \inst|Mux6~5_combout\);

-- Location: LCCOMB_X36_Y8_N20
\inst|Mux6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~6_combout\ = (\inst|Mux6~3_combout\) # ((\inst|Mux6~4_combout\) # (\inst|Mux6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~3_combout\,
	datab => \inst|Mux6~4_combout\,
	datad => \inst|Mux6~5_combout\,
	combout => \inst|Mux6~6_combout\);

-- Location: LCCOMB_X36_Y8_N10
\inst|Mux6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux6~7_combout\ = (\inst3|REGISTER_B\(3)) # ((\inst|Mux6~6_combout\) # (!\inst1|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(3),
	datab => \inst1|Mux14~0_combout\,
	datad => \inst|Mux6~6_combout\,
	combout => \inst|Mux6~7_combout\);

-- Location: LCCOMB_X38_Y8_N24
\inst|ShiftLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~12_combout\ = (\inst3|REGISTER_B\(0) & ((\inst3|REGISTER_A\(0)))) # (!\inst3|REGISTER_B\(0) & (\inst3|REGISTER_A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_A\(1),
	datac => \inst3|REGISTER_A\(0),
	datad => \inst3|REGISTER_B\(0),
	combout => \inst|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X38_Y8_N18
\inst|ShiftLeft0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~17_combout\ = (!\inst3|REGISTER_B\(2) & (!\inst3|REGISTER_B\(1) & \inst|ShiftLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(2),
	datac => \inst3|REGISTER_B\(1),
	datad => \inst|ShiftLeft0~12_combout\,
	combout => \inst|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X36_Y8_N8
\inst|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux7~2_combout\ = (\inst|Mux6~9_combout\ & (\inst|Mux6~8_combout\ & ((\inst|ShiftLeft0~17_combout\)))) # (!\inst|Mux6~9_combout\ & (((!\inst|tmp2~89_combout\)) # (!\inst|Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~9_combout\,
	datab => \inst|Mux6~8_combout\,
	datac => \inst|tmp2~89_combout\,
	datad => \inst|ShiftLeft0~17_combout\,
	combout => \inst|Mux7~2_combout\);

-- Location: LCCOMB_X37_Y8_N20
\inst|ShiftLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~7_combout\ = (\inst3|REGISTER_B\(0) & (\inst3|REGISTER_A\(6))) # (!\inst3|REGISTER_B\(0) & ((\inst3|REGISTER_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(6),
	datac => \inst3|REGISTER_B\(0),
	datad => \inst3|REGISTER_A\(7),
	combout => \inst|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X38_Y8_N28
\inst|ShiftLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~10_combout\ = (\inst3|REGISTER_B\(0) & (\inst3|REGISTER_A\(8))) # (!\inst3|REGISTER_B\(0) & ((\inst3|REGISTER_A\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(8),
	datac => \inst3|REGISTER_A\(9),
	datad => \inst3|REGISTER_B\(0),
	combout => \inst|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X38_Y8_N12
\inst|ShiftLeft0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~16_combout\ = (\inst3|REGISTER_B\(1) & (\inst|ShiftLeft0~7_combout\)) # (!\inst3|REGISTER_B\(1) & ((\inst|ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_B\(1),
	datac => \inst|ShiftLeft0~7_combout\,
	datad => \inst|ShiftLeft0~10_combout\,
	combout => \inst|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X38_Y8_N14
\inst|ShiftLeft0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~13_combout\ = (\inst3|REGISTER_B\(0) & ((\inst3|REGISTER_A\(2)))) # (!\inst3|REGISTER_B\(0) & (\inst3|REGISTER_A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(3),
	datab => \inst3|REGISTER_A\(2),
	datad => \inst3|REGISTER_B\(0),
	combout => \inst|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X38_Y8_N2
\inst|ShiftLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~6_combout\ = (\inst3|REGISTER_B\(0) & (\inst3|REGISTER_A\(4))) # (!\inst3|REGISTER_B\(0) & ((\inst3|REGISTER_A\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(4),
	datac => \inst3|REGISTER_A\(5),
	datad => \inst3|REGISTER_B\(0),
	combout => \inst|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X38_Y8_N10
\inst|ShiftLeft0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~15_combout\ = (\inst3|REGISTER_B\(1) & (\inst|ShiftLeft0~13_combout\)) # (!\inst3|REGISTER_B\(1) & ((\inst|ShiftLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_B\(1),
	datac => \inst|ShiftLeft0~13_combout\,
	datad => \inst|ShiftLeft0~6_combout\,
	combout => \inst|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X36_Y8_N22
\inst|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux7~3_combout\ = (\inst|Mux6~7_combout\ & (\inst|Mux7~2_combout\)) # (!\inst|Mux6~7_combout\ & ((\inst|Mux7~2_combout\ & (\inst|ShiftLeft0~16_combout\)) # (!\inst|Mux7~2_combout\ & ((\inst|ShiftLeft0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~7_combout\,
	datab => \inst|Mux7~2_combout\,
	datac => \inst|ShiftLeft0~16_combout\,
	datad => \inst|ShiftLeft0~15_combout\,
	combout => \inst|Mux7~3_combout\);

-- Location: LCCOMB_X36_Y8_N14
\inst|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = (\inst3|REGISTER_B\(9) & (!\inst1|Mux13~0_combout\ & \inst1|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_B\(9),
	datac => \inst1|Mux13~0_combout\,
	datad => \inst1|Mux14~0_combout\,
	combout => \inst|Mux7~1_combout\);

-- Location: LCCOMB_X36_Y8_N16
\inst|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst1|Mux13~0_combout\ & (!\inst1|Mux14~0_combout\ & (\inst|tmp2~89_combout\ & \inst|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst1|Mux14~0_combout\,
	datac => \inst|tmp2~89_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X36_Y8_N18
\inst|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux7~4_combout\ = (\inst|Mux7~1_combout\) # ((\inst|Mux7~0_combout\) # ((\inst|Mux7~3_combout\ & \inst|Mux6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~3_combout\,
	datab => \inst|Mux7~1_combout\,
	datac => \inst|Mux6~12_combout\,
	datad => \inst|Mux7~0_combout\,
	combout => \inst|Mux7~4_combout\);

-- Location: FF_X34_Y9_N19
\inst3|program_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[9]~34_combout\,
	asdata => \inst|Mux7~4_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(9));

-- Location: LCCOMB_X34_Y9_N20
\inst3|program_counter[10]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[10]~36_combout\ = (\inst3|program_counter\(10) & (\inst3|program_counter[9]~35\ $ (GND))) # (!\inst3|program_counter\(10) & (!\inst3|program_counter[9]~35\ & VCC))
-- \inst3|program_counter[10]~37\ = CARRY((\inst3|program_counter\(10) & !\inst3|program_counter[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|program_counter\(10),
	datad => VCC,
	cin => \inst3|program_counter[9]~35\,
	combout => \inst3|program_counter[10]~36_combout\,
	cout => \inst3|program_counter[10]~37\);

-- Location: FF_X34_Y9_N21
\inst3|program_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[10]~36_combout\,
	asdata => \inst|Mux6~13_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(10));

-- Location: FF_X34_Y9_N23
\inst3|program_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[11]~38_combout\,
	asdata => \inst|Mux5~4_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(11));

-- Location: LCCOMB_X32_Y9_N22
\inst3|Mux240~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux240~0_combout\ = (\inst3|Mux239~0_combout\ & ((\inst3|segment_offset_h_register\(3)) # ((\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst3|Mux239~0_combout\ & (((!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & 
-- \inst3|program_counter\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|segment_offset_h_register\(3),
	datac => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datad => \inst3|program_counter\(11),
	combout => \inst3|Mux240~0_combout\);

-- Location: LCCOMB_X32_Y9_N24
\inst3|Mux240~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux240~1_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|Mux240~0_combout\ & ((\inst3|tmp\(11)))) # (!\inst3|Mux240~0_combout\ & (\inst3|stack_pointer\(11))))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & 
-- (((\inst3|Mux240~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stack_pointer\(11),
	datab => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datac => \inst3|tmp\(11),
	datad => \inst3|Mux240~0_combout\,
	combout => \inst3|Mux240~1_combout\);

-- Location: LCCOMB_X36_Y6_N30
\inst3|generic_register_b[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|generic_register_b[11]~feeder_combout\ = \inst|Mux5~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux5~4_combout\,
	combout => \inst3|generic_register_b[11]~feeder_combout\);

-- Location: FF_X36_Y6_N31
\inst3|generic_register_b[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|generic_register_b[11]~feeder_combout\,
	ena => \inst3|Mux83~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_b\(11));

-- Location: FF_X35_Y9_N29
\inst3|generic_register_a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux5~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_a\(11));

-- Location: LCCOMB_X36_Y6_N12
\inst3|segment_register[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|segment_register[11]~feeder_combout\ = \inst|Mux5~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux5~4_combout\,
	combout => \inst3|segment_register[11]~feeder_combout\);

-- Location: FF_X36_Y6_N13
\inst3|segment_register[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|segment_register[11]~feeder_combout\,
	ena => \inst3|Mux83~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|segment_register\(11));

-- Location: LCCOMB_X36_Y6_N10
\inst3|Mux240~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux240~2_combout\ = (\inst3|instruction_register\(5) & (\inst3|instruction_register\(11) & ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~q\,
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(11),
	combout => \inst3|Mux240~2_combout\);

-- Location: LCCOMB_X36_Y6_N4
\inst3|Mux240~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux240~3_combout\ = (\inst3|Mux241~5_combout\ & ((\inst3|Mux241~6_combout\ & (\inst3|segment_register\(11))) # (!\inst3|Mux241~6_combout\ & ((\inst3|Mux240~2_combout\))))) # (!\inst3|Mux241~5_combout\ & (((!\inst3|Mux241~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_register\(11),
	datab => \inst3|Mux240~2_combout\,
	datac => \inst3|Mux241~5_combout\,
	datad => \inst3|Mux241~6_combout\,
	combout => \inst3|Mux240~3_combout\);

-- Location: LCCOMB_X36_Y6_N14
\inst3|Mux240~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux240~4_combout\ = (\inst3|Mux240~3_combout\ & (((\inst3|generic_register_a\(11)) # (!\inst3|Mux235~0_combout\)))) # (!\inst3|Mux240~3_combout\ & (\inst3|generic_register_b\(11) & ((\inst3|Mux235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_b\(11),
	datab => \inst3|generic_register_a\(11),
	datac => \inst3|Mux240~3_combout\,
	datad => \inst3|Mux235~0_combout\,
	combout => \inst3|Mux240~4_combout\);

-- Location: LCCOMB_X35_Y6_N28
\inst3|Mux240~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux240~5_combout\ = (\inst3|Mux241~2_combout\ & ((\inst3|Mux240~1_combout\) # ((\inst3|Mux241~3_combout\)))) # (!\inst3|Mux241~2_combout\ & (((\inst3|Mux240~4_combout\ & !\inst3|Mux241~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~2_combout\,
	datab => \inst3|Mux240~1_combout\,
	datac => \inst3|Mux240~4_combout\,
	datad => \inst3|Mux241~3_combout\,
	combout => \inst3|Mux240~5_combout\);

-- Location: FF_X35_Y6_N19
\inst3|generic_register_c[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux5~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(11));

-- Location: LCCOMB_X35_Y6_N18
\inst3|Mux240~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux240~6_combout\ = (\inst3|Mux241~3_combout\ & ((\inst3|Mux240~5_combout\ & ((\inst3|generic_register_d\(11)))) # (!\inst3|Mux240~5_combout\ & (\inst3|generic_register_c\(11))))) # (!\inst3|Mux241~3_combout\ & (\inst3|Mux240~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux241~3_combout\,
	datab => \inst3|Mux240~5_combout\,
	datac => \inst3|generic_register_c\(11),
	datad => \inst3|generic_register_d\(11),
	combout => \inst3|Mux240~6_combout\);

-- Location: LCCOMB_X35_Y6_N26
\inst3|Mux240~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux240~7_combout\ = (\inst3|Mux240~6_combout\ & (((!\inst3|instruction_register\(8)) # (!\inst3|instruction_register\(6))) # (!\inst3|Mux239~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|instruction_register\(6),
	datac => \inst3|instruction_register\(8),
	datad => \inst3|Mux240~6_combout\,
	combout => \inst3|Mux240~7_combout\);

-- Location: LCCOMB_X38_Y7_N10
\inst3|REGISTER_A[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(11) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(11))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux240~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(11),
	datab => \inst3|Mux240~7_combout\,
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(11));

-- Location: LCCOMB_X38_Y7_N30
\inst|tmp2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~11_combout\ = (\inst3|REGISTER_A\(11) & (((!\inst|tmp2~9_combout\ & !\inst|tmp2~10_combout\)))) # (!\inst3|REGISTER_A\(11) & ((\inst|tmp2~9_combout\) # ((\inst|tmp2~8_combout\ & \inst|tmp2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(11),
	datab => \inst|tmp2~8_combout\,
	datac => \inst|tmp2~9_combout\,
	datad => \inst|tmp2~10_combout\,
	combout => \inst|tmp2~11_combout\);

-- Location: LCCOMB_X38_Y7_N12
\inst|tmp2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~14_combout\ = (\inst3|REGISTER_A\(10) & (((!\inst|tmp2~12_combout\ & !\inst|tmp2~13_combout\)))) # (!\inst3|REGISTER_A\(10) & ((\inst|tmp2~12_combout\) # ((\inst|tmp2~11_combout\ & \inst|tmp2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~11_combout\,
	datab => \inst3|REGISTER_A\(10),
	datac => \inst|tmp2~12_combout\,
	datad => \inst|tmp2~13_combout\,
	combout => \inst|tmp2~14_combout\);

-- Location: LCCOMB_X38_Y7_N6
\inst|tmp2~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~17_combout\ = (\inst3|REGISTER_A\(9) & (((!\inst|tmp2~15_combout\ & !\inst|tmp2~16_combout\)))) # (!\inst3|REGISTER_A\(9) & ((\inst|tmp2~15_combout\) # ((\inst|tmp2~14_combout\ & \inst|tmp2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~14_combout\,
	datab => \inst3|REGISTER_A\(9),
	datac => \inst|tmp2~15_combout\,
	datad => \inst|tmp2~16_combout\,
	combout => \inst|tmp2~17_combout\);

-- Location: LCCOMB_X39_Y7_N28
\inst|tmp2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~22_combout\ = (\inst3|REGISTER_A\(8) & (((!\inst|tmp2~18_combout\ & !\inst|tmp2~19_combout\)))) # (!\inst3|REGISTER_A\(8) & ((\inst|tmp2~18_combout\) # ((\inst|tmp2~17_combout\ & \inst|tmp2~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(8),
	datab => \inst|tmp2~17_combout\,
	datac => \inst|tmp2~18_combout\,
	datad => \inst|tmp2~19_combout\,
	combout => \inst|tmp2~22_combout\);

-- Location: LCCOMB_X39_Y7_N30
\inst|tmp2~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~51_combout\ = (\inst3|REGISTER_A\(7) & (((!\inst|tmp2~21_combout\ & !\inst|tmp2~20_combout\)))) # (!\inst3|REGISTER_A\(7) & ((\inst|tmp2~21_combout\) # ((\inst|tmp2~22_combout\ & \inst|tmp2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(7),
	datab => \inst|tmp2~22_combout\,
	datac => \inst|tmp2~21_combout\,
	datad => \inst|tmp2~20_combout\,
	combout => \inst|tmp2~51_combout\);

-- Location: LCCOMB_X39_Y7_N4
\inst|tmp2~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~60_combout\ = (\inst|tmp2~51_combout\ & ((\inst3|REGISTER_A\(6)) # ((!\inst|tmp2~49_combout\ & !\inst|tmp2~50_combout\)))) # (!\inst|tmp2~51_combout\ & (!\inst3|REGISTER_A\(6) & ((\inst|tmp2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~51_combout\,
	datab => \inst3|REGISTER_A\(6),
	datac => \inst|tmp2~49_combout\,
	datad => \inst|tmp2~50_combout\,
	combout => \inst|tmp2~60_combout\);

-- Location: LCCOMB_X39_Y7_N6
\inst|tmp2~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~71_combout\ = (\inst3|REGISTER_A\(5) & (((\inst|tmp2~62_combout\)))) # (!\inst3|REGISTER_A\(5) & ((\inst|tmp2~62_combout\ & (!\inst|tmp2~60_combout\ & !\inst|tmp2~61_combout\)) # (!\inst|tmp2~62_combout\ & ((\inst|tmp2~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(5),
	datab => \inst|tmp2~60_combout\,
	datac => \inst|tmp2~62_combout\,
	datad => \inst|tmp2~61_combout\,
	combout => \inst|tmp2~71_combout\);

-- Location: LCCOMB_X39_Y7_N18
\inst|tmp2~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~82_combout\ = (\inst3|REGISTER_A\(4) & (((\inst|tmp2~73_combout\)))) # (!\inst3|REGISTER_A\(4) & ((\inst|tmp2~73_combout\ & (!\inst|tmp2~71_combout\ & !\inst|tmp2~72_combout\)) # (!\inst|tmp2~73_combout\ & ((\inst|tmp2~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~71_combout\,
	datab => \inst3|REGISTER_A\(4),
	datac => \inst|tmp2~73_combout\,
	datad => \inst|tmp2~72_combout\,
	combout => \inst|tmp2~82_combout\);

-- Location: LCCOMB_X35_Y7_N16
\inst|tmp2~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~95_combout\ = (\inst3|REGISTER_A\(3) & (!\inst|tmp2~82_combout\ & (!\inst|tmp2~83_combout\))) # (!\inst3|REGISTER_A\(3) & ((\inst|tmp2~83_combout\) # ((\inst|tmp2~82_combout\ & \inst|tmp2~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(3),
	datab => \inst|tmp2~82_combout\,
	datac => \inst|tmp2~83_combout\,
	datad => \inst|tmp2~84_combout\,
	combout => \inst|tmp2~95_combout\);

-- Location: LCCOMB_X35_Y7_N30
\inst|tmp2~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~94_combout\ = (\inst|tmp2~82_combout\ & (!\inst3|REGISTER_A\(3) & ((!\inst|tmp2~84_combout\)))) # (!\inst|tmp2~82_combout\ & (\inst|tmp2~83_combout\ & ((\inst3|REGISTER_A\(3)) # (\inst|tmp2~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(3),
	datab => \inst|tmp2~82_combout\,
	datac => \inst|tmp2~83_combout\,
	datad => \inst|tmp2~84_combout\,
	combout => \inst|tmp2~94_combout\);

-- Location: LCCOMB_X35_Y7_N6
\inst|tmp2~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~93_combout\ = (\inst3|REGISTER_A\(3) & (((\inst|tmp2~84_combout\)))) # (!\inst3|REGISTER_A\(3) & ((\inst|tmp2~83_combout\ & ((!\inst|tmp2~84_combout\))) # (!\inst|tmp2~83_combout\ & (!\inst|tmp2~82_combout\ & \inst|tmp2~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(3),
	datab => \inst|tmp2~82_combout\,
	datac => \inst|tmp2~83_combout\,
	datad => \inst|tmp2~84_combout\,
	combout => \inst|tmp2~93_combout\);

-- Location: LCCOMB_X35_Y7_N4
\inst|tmp2~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~101_combout\ = (\inst|tmp2~93_combout\ & (!\inst3|REGISTER_A\(2) & (!\inst|tmp2~95_combout\))) # (!\inst|tmp2~93_combout\ & (\inst|tmp2~94_combout\ & ((\inst3|REGISTER_A\(2)) # (\inst|tmp2~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(2),
	datab => \inst|tmp2~95_combout\,
	datac => \inst|tmp2~94_combout\,
	datad => \inst|tmp2~93_combout\,
	combout => \inst|tmp2~101_combout\);

-- Location: LCCOMB_X35_Y7_N8
\inst|tmp2~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~100_combout\ = (\inst3|REGISTER_A\(2) & (((!\inst|tmp2~94_combout\ & !\inst|tmp2~93_combout\)))) # (!\inst3|REGISTER_A\(2) & ((\inst|tmp2~94_combout\) # ((\inst|tmp2~95_combout\ & \inst|tmp2~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(2),
	datab => \inst|tmp2~95_combout\,
	datac => \inst|tmp2~94_combout\,
	datad => \inst|tmp2~93_combout\,
	combout => \inst|tmp2~100_combout\);

-- Location: LCCOMB_X35_Y7_N26
\inst|tmp2~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~99_combout\ = (\inst3|REGISTER_A\(2) & (\inst|tmp2~95_combout\)) # (!\inst3|REGISTER_A\(2) & ((\inst|tmp2~95_combout\ & (!\inst|tmp2~94_combout\ & !\inst|tmp2~93_combout\)) # (!\inst|tmp2~95_combout\ & (\inst|tmp2~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(2),
	datab => \inst|tmp2~95_combout\,
	datac => \inst|tmp2~94_combout\,
	datad => \inst|tmp2~93_combout\,
	combout => \inst|tmp2~99_combout\);

-- Location: LCCOMB_X35_Y7_N0
\inst|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|tmp2~101_combout\) # ((\inst|tmp2~99_combout\ & ((\inst3|REGISTER_A\(1)) # (\inst|tmp2~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(1),
	datab => \inst|tmp2~100_combout\,
	datac => \inst|tmp2~99_combout\,
	datad => \inst|tmp2~101_combout\,
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X31_Y7_N24
\inst|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux12~1_combout\ = (\inst1|Mux13~0_combout\ & (!\inst|Mux12~0_combout\)) # (!\inst1|Mux13~0_combout\ & (((\inst3|REGISTER_B\(4) & \inst1|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst|Mux12~0_combout\,
	datac => \inst3|REGISTER_B\(4),
	datad => \inst1|Mux14~0_combout\,
	combout => \inst|Mux12~1_combout\);

-- Location: LCCOMB_X31_Y7_N18
\inst|LessThan28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan28~0_combout\ = (\inst|tmp2~99_combout\ & ((\inst3|REGISTER_A\(1)) # (\inst|tmp2~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(1),
	datac => \inst|tmp2~100_combout\,
	datad => \inst|tmp2~99_combout\,
	combout => \inst|LessThan28~0_combout\);

-- Location: LCCOMB_X31_Y7_N14
\inst|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux12~2_combout\ = (\inst1|Mux13~0_combout\ & (\inst|tmp2~101_combout\ $ (((!\inst|Mux12~1_combout\ & \inst|LessThan28~0_combout\))))) # (!\inst1|Mux13~0_combout\ & (((\inst|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~101_combout\,
	datab => \inst|Mux12~1_combout\,
	datac => \inst1|Mux13~0_combout\,
	datad => \inst|LessThan28~0_combout\,
	combout => \inst|Mux12~2_combout\);

-- Location: FF_X34_Y9_N9
\inst3|program_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[4]~24_combout\,
	asdata => \inst|Mux12~2_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(4));

-- Location: LCCOMB_X34_Y9_N10
\inst3|program_counter[5]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[5]~26_combout\ = (\inst3|program_counter\(5) & (!\inst3|program_counter[4]~25\)) # (!\inst3|program_counter\(5) & ((\inst3|program_counter[4]~25\) # (GND)))
-- \inst3|program_counter[5]~27\ = CARRY((!\inst3|program_counter[4]~25\) # (!\inst3|program_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(5),
	datad => VCC,
	cin => \inst3|program_counter[4]~25\,
	combout => \inst3|program_counter[5]~26_combout\,
	cout => \inst3|program_counter[5]~27\);

-- Location: FF_X34_Y9_N11
\inst3|program_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[5]~26_combout\,
	asdata => \inst|Mux11~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(5));

-- Location: LCCOMB_X34_Y9_N12
\inst3|program_counter[6]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|program_counter[6]~28_combout\ = (\inst3|program_counter\(6) & (\inst3|program_counter[5]~27\ $ (GND))) # (!\inst3|program_counter\(6) & (!\inst3|program_counter[5]~27\ & VCC))
-- \inst3|program_counter[6]~29\ = CARRY((\inst3|program_counter\(6) & !\inst3|program_counter[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|program_counter\(6),
	datad => VCC,
	cin => \inst3|program_counter[5]~27\,
	combout => \inst3|program_counter[6]~28_combout\,
	cout => \inst3|program_counter[6]~29\);

-- Location: FF_X34_Y9_N13
\inst3|program_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[6]~28_combout\,
	asdata => \inst|Mux10~1_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(6));

-- Location: FF_X34_Y9_N15
\inst3|program_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|program_counter[7]~30_combout\,
	asdata => \inst|Mux9~2_combout\,
	sload => \inst3|Mux83~111_combout\,
	ena => \inst3|program_counter[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|program_counter\(7));

-- Location: LCCOMB_X30_Y6_N20
\inst3|Mux219~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~6_combout\ = (\inst3|instruction_register\(1) & (\inst1|state.handle_args_as_registers~q\ & \inst3|program_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(1),
	datab => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|program_counter\(7),
	combout => \inst3|Mux219~6_combout\);

-- Location: LCCOMB_X30_Y6_N30
\inst3|Mux219~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~7_combout\ = (\inst3|Mux219~3_combout\ & (\inst3|Mux219~2_combout\ & ((\inst3|segment_register\(7))))) # (!\inst3|Mux219~3_combout\ & (((\inst3|Mux219~6_combout\)) # (!\inst3|Mux219~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~3_combout\,
	datab => \inst3|Mux219~2_combout\,
	datac => \inst3|Mux219~6_combout\,
	datad => \inst3|segment_register\(7),
	combout => \inst3|Mux219~7_combout\);

-- Location: LCCOMB_X30_Y6_N0
\inst3|Mux219~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~8_combout\ = (\inst3|Mux219~7_combout\ & (((\inst3|generic_register_a\(7)) # (!\inst3|Mux226~2_combout\)))) # (!\inst3|Mux219~7_combout\ & (\inst3|generic_register_c\(7) & ((\inst3|Mux226~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~7_combout\,
	datab => \inst3|generic_register_c\(7),
	datac => \inst3|generic_register_a\(7),
	datad => \inst3|Mux226~2_combout\,
	combout => \inst3|Mux219~8_combout\);

-- Location: LCCOMB_X30_Y9_N6
\inst3|Mux219~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~4_combout\ = (\inst3|Mux226~5_combout\ & (((\inst3|stack_pointer\(7)) # (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)))) # (!\inst3|Mux226~5_combout\ & (\inst3|instruction_register\(7) & ((!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~5_combout\,
	datab => \inst3|instruction_register\(7),
	datac => \inst3|stack_pointer\(7),
	datad => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	combout => \inst3|Mux219~4_combout\);

-- Location: LCCOMB_X29_Y9_N2
\inst3|Mux219~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~5_combout\ = (\inst3|Mux219~4_combout\ & ((\inst3|tmp\(7)) # ((!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)))) # (!\inst3|Mux219~4_combout\ & (((\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & \inst3|segment_offset_l_register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~4_combout\,
	datab => \inst3|tmp\(7),
	datac => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datad => \inst3|segment_offset_l_register\(7),
	combout => \inst3|Mux219~5_combout\);

-- Location: LCCOMB_X31_Y11_N16
\inst3|Mux219~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~9_combout\ = (\inst3|Mux219~0_combout\ & (((\inst3|Mux219~5_combout\) # (\inst3|Mux219~1_combout\)))) # (!\inst3|Mux219~0_combout\ & (\inst3|Mux219~8_combout\ & ((!\inst3|Mux219~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~8_combout\,
	datab => \inst3|Mux219~5_combout\,
	datac => \inst3|Mux219~0_combout\,
	datad => \inst3|Mux219~1_combout\,
	combout => \inst3|Mux219~9_combout\);

-- Location: LCCOMB_X31_Y11_N10
\inst3|Mux219~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~10_combout\ = (\inst3|Mux219~9_combout\ & (((\inst3|generic_register_d\(7)) # (!\inst3|Mux219~1_combout\)))) # (!\inst3|Mux219~9_combout\ & (\inst3|generic_register_b\(7) & ((\inst3|Mux219~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_b\(7),
	datab => \inst3|Mux219~9_combout\,
	datac => \inst3|generic_register_d\(7),
	datad => \inst3|Mux219~1_combout\,
	combout => \inst3|Mux219~10_combout\);

-- Location: LCCOMB_X31_Y11_N24
\inst3|Mux219~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~11_combout\ = (\inst3|Mux219~10_combout\ & (((!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\) # (!\inst3|instruction_register\(3))) # (!\inst3|instruction_register\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(2),
	datab => \inst3|Mux219~10_combout\,
	datac => \inst3|instruction_register\(3),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux219~11_combout\);

-- Location: LCCOMB_X31_Y11_N26
\inst3|REGISTER_B[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(7) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|REGISTER_B\(7)))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|Mux219~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~11_combout\,
	datac => \inst3|REGISTER_B\(7),
	datad => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(7));

-- Location: LCCOMB_X32_Y8_N6
\inst|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (\inst1|Mux14~0_combout\ & \inst3|REGISTER_B\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux14~0_combout\,
	datac => \inst3|REGISTER_B\(7),
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X32_Y7_N8
\inst|tmp2~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~92_combout\ = (\inst|tmp2~86_combout\ & (((!\inst|tmp2~85_combout\) # (!\inst|tmp2~88_combout\)))) # (!\inst|tmp2~86_combout\ & (\inst|tmp2~85_combout\ & ((\inst|tmp2~88_combout\) # (!\inst|tmp2~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~86_combout\,
	datab => \inst|tmp2~87_combout\,
	datac => \inst|tmp2~88_combout\,
	datad => \inst|tmp2~85_combout\,
	combout => \inst|tmp2~92_combout\);

-- Location: LCCOMB_X35_Y7_N28
\inst|tmp2~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~96_combout\ = \inst|tmp2~94_combout\ $ ((((!\inst3|REGISTER_A\(2) & !\inst|tmp2~95_combout\)) # (!\inst|tmp2~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(2),
	datab => \inst|tmp2~95_combout\,
	datac => \inst|tmp2~94_combout\,
	datad => \inst|tmp2~93_combout\,
	combout => \inst|tmp2~96_combout\);

-- Location: LCCOMB_X32_Y7_N10
\inst|tmp2~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~97_combout\ = (\inst|tmp2~87_combout\ & ((\inst|tmp2~88_combout\ $ (\inst|tmp2~85_combout\)))) # (!\inst|tmp2~87_combout\ & (((\inst|tmp2~86_combout\ & !\inst|tmp2~88_combout\)) # (!\inst|tmp2~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~86_combout\,
	datab => \inst|tmp2~87_combout\,
	datac => \inst|tmp2~88_combout\,
	datad => \inst|tmp2~85_combout\,
	combout => \inst|tmp2~97_combout\);

-- Location: LCCOMB_X32_Y7_N14
\inst|tmp2~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|tmp2~98_combout\ = (\inst|tmp2~87_combout\ & (\inst|tmp2~88_combout\ & ((!\inst|tmp2~85_combout\) # (!\inst|tmp2~86_combout\)))) # (!\inst|tmp2~87_combout\ & (((\inst|tmp2~86_combout\ & \inst|tmp2~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~88_combout\,
	datab => \inst|tmp2~87_combout\,
	datac => \inst|tmp2~86_combout\,
	datad => \inst|tmp2~85_combout\,
	combout => \inst|tmp2~98_combout\);

-- Location: LCCOMB_X35_Y7_N12
\inst|Add26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add26~0_combout\ = (\inst|tmp2~93_combout\ & ((\inst3|REGISTER_A\(2)) # (\inst|tmp2~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(2),
	datab => \inst|tmp2~95_combout\,
	datad => \inst|tmp2~93_combout\,
	combout => \inst|Add26~0_combout\);

-- Location: LCCOMB_X32_Y7_N2
\inst|LessThan29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan29~0_combout\ = (!\inst|tmp2~92_combout\ & ((\inst|Add26~0_combout\ $ (\inst|tmp2~94_combout\)) # (!\inst|tmp2~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add26~0_combout\,
	datab => \inst|tmp2~94_combout\,
	datac => \inst|tmp2~92_combout\,
	datad => \inst|tmp2~97_combout\,
	combout => \inst|LessThan29~0_combout\);

-- Location: LCCOMB_X32_Y7_N0
\inst|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux9~1_combout\ = (\inst|tmp2~96_combout\ & (!\inst|tmp2~97_combout\ & ((\inst|tmp2~98_combout\) # (\inst|LessThan29~0_combout\)))) # (!\inst|tmp2~96_combout\ & (((\inst|tmp2~98_combout\) # (\inst|LessThan29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~96_combout\,
	datab => \inst|tmp2~97_combout\,
	datac => \inst|tmp2~98_combout\,
	datad => \inst|LessThan29~0_combout\,
	combout => \inst|Mux9~1_combout\);

-- Location: LCCOMB_X32_Y7_N20
\inst|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux9~2_combout\ = (\inst1|Mux13~0_combout\ & ((\inst|tmp2~92_combout\ $ (!\inst|Mux9~1_combout\)))) # (!\inst1|Mux13~0_combout\ & (\inst|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst|Mux9~0_combout\,
	datac => \inst|tmp2~92_combout\,
	datad => \inst|Mux9~1_combout\,
	combout => \inst|Mux9~2_combout\);

-- Location: FF_X32_Y7_N21
\inst3|instruction_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|Mux9~2_combout\,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(7));

-- Location: LCCOMB_X35_Y9_N18
\inst3|Mux83~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~117_combout\ = (\inst3|instruction_register\(6) & (!\inst3|instruction_register\(7) & (\inst1|state.save_to_register~q\ & \inst3|Mux83~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|instruction_register\(7),
	datac => \inst1|state.save_to_register~q\,
	datad => \inst3|Mux83~57_combout\,
	combout => \inst3|Mux83~117_combout\);

-- Location: FF_X35_Y7_N23
\inst3|generic_register_d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux5~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_d\(11));

-- Location: LCCOMB_X35_Y9_N24
\inst3|Mux223~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux223~2_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(0) & \inst3|instruction_register\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(0),
	datad => \inst3|instruction_register\(11),
	combout => \inst3|Mux223~2_combout\);

-- Location: LCCOMB_X35_Y9_N6
\inst3|Mux223~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux223~3_combout\ = (\inst3|Mux226~4_combout\ & (((\inst3|segment_register\(11) & \inst3|Mux226~3_combout\)))) # (!\inst3|Mux226~4_combout\ & ((\inst3|Mux223~2_combout\) # ((!\inst3|Mux226~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux223~2_combout\,
	datab => \inst3|segment_register\(11),
	datac => \inst3|Mux226~4_combout\,
	datad => \inst3|Mux226~3_combout\,
	combout => \inst3|Mux223~3_combout\);

-- Location: LCCOMB_X35_Y9_N16
\inst3|Mux223~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux223~4_combout\ = (\inst3|Mux223~3_combout\ & ((\inst3|generic_register_a\(11)) # ((!\inst3|Mux226~2_combout\)))) # (!\inst3|Mux223~3_combout\ & (((\inst3|generic_register_b\(11) & \inst3|Mux226~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux223~3_combout\,
	datab => \inst3|generic_register_a\(11),
	datac => \inst3|generic_register_b\(11),
	datad => \inst3|Mux226~2_combout\,
	combout => \inst3|Mux223~4_combout\);

-- Location: LCCOMB_X32_Y9_N16
\inst3|Mux223~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux223~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (((\inst3|segment_offset_h_register\(3)) # (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (\inst3|program_counter\(11) & 
-- ((!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datab => \inst3|program_counter\(11),
	datac => \inst3|segment_offset_h_register\(3),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux223~0_combout\);

-- Location: LCCOMB_X36_Y9_N14
\inst3|Mux223~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux223~1_combout\ = (\inst3|Mux223~0_combout\ & ((\inst3|tmp\(11)) # ((!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst3|Mux223~0_combout\ & (((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & \inst3|stack_pointer\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tmp\(11),
	datab => \inst3|Mux223~0_combout\,
	datac => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datad => \inst3|stack_pointer\(11),
	combout => \inst3|Mux223~1_combout\);

-- Location: LCCOMB_X36_Y9_N12
\inst3|Mux223~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux223~5_combout\ = (\inst3|Mux226~0_combout\ & (((\inst3|Mux226~1_combout\) # (\inst3|Mux223~1_combout\)))) # (!\inst3|Mux226~0_combout\ & (\inst3|Mux223~4_combout\ & (!\inst3|Mux226~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux223~4_combout\,
	datab => \inst3|Mux226~0_combout\,
	datac => \inst3|Mux226~1_combout\,
	datad => \inst3|Mux223~1_combout\,
	combout => \inst3|Mux223~5_combout\);

-- Location: LCCOMB_X32_Y8_N22
\inst3|Mux223~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux223~6_combout\ = (\inst3|Mux226~1_combout\ & ((\inst3|Mux223~5_combout\ & (\inst3|generic_register_d\(11))) # (!\inst3|Mux223~5_combout\ & ((\inst3|generic_register_c\(11)))))) # (!\inst3|Mux226~1_combout\ & (((\inst3|Mux223~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~1_combout\,
	datab => \inst3|generic_register_d\(11),
	datac => \inst3|Mux223~5_combout\,
	datad => \inst3|generic_register_c\(11),
	combout => \inst3|Mux223~6_combout\);

-- Location: LCCOMB_X32_Y8_N28
\inst3|Mux223~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux223~7_combout\ = (\inst3|Mux223~6_combout\ & (((!\inst3|instruction_register\(3)) # (!\inst3|Mux226~5_combout\)) # (!\inst3|instruction_register\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(2),
	datab => \inst3|Mux226~5_combout\,
	datac => \inst3|instruction_register\(3),
	datad => \inst3|Mux223~6_combout\,
	combout => \inst3|Mux223~7_combout\);

-- Location: LCCOMB_X32_Y8_N14
\inst3|REGISTER_B[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(11) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|REGISTER_B\(11)))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|Mux223~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux223~7_combout\,
	datab => \inst3|REGISTER_B\(11),
	datac => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(11));

-- Location: LCCOMB_X34_Y8_N14
\inst|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst3|REGISTER_B\(11) & (!\inst1|Mux13~0_combout\ & \inst1|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_B\(11),
	datac => \inst1|Mux13~0_combout\,
	datad => \inst1|Mux14~0_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: LCCOMB_X35_Y7_N22
\inst|Add31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add31~1_combout\ = \inst|tmp2~91_combout\ $ (((!\inst|tmp2~90_combout\) # (!\inst|tmp2~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~89_combout\,
	datab => \inst|tmp2~91_combout\,
	datad => \inst|tmp2~90_combout\,
	combout => \inst|Add31~1_combout\);

-- Location: LCCOMB_X35_Y7_N18
\inst|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst1|Mux13~0_combout\ & (!\inst1|Mux14~0_combout\ & (!\inst|Add31~1_combout\ & \inst|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst1|Mux14~0_combout\,
	datac => \inst|Add31~1_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y8_N6
\inst|ShiftLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~9_combout\ = (!\inst3|REGISTER_B\(1) & ((\inst3|REGISTER_B\(0) & ((\inst3|REGISTER_A\(10)))) # (!\inst3|REGISTER_B\(0) & (\inst3|REGISTER_A\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(1),
	datab => \inst3|REGISTER_A\(11),
	datac => \inst3|REGISTER_A\(10),
	datad => \inst3|REGISTER_B\(0),
	combout => \inst|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X38_Y8_N26
\inst|ShiftLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~11_combout\ = (\inst|ShiftLeft0~9_combout\) # ((\inst|ShiftLeft0~10_combout\ & \inst3|REGISTER_B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ShiftLeft0~10_combout\,
	datac => \inst3|REGISTER_B\(1),
	datad => \inst|ShiftLeft0~9_combout\,
	combout => \inst|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X38_Y8_N16
\inst|ShiftLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~8_combout\ = (\inst3|REGISTER_B\(1) & ((\inst|ShiftLeft0~6_combout\))) # (!\inst3|REGISTER_B\(1) & (\inst|ShiftLeft0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_B\(1),
	datac => \inst|ShiftLeft0~7_combout\,
	datad => \inst|ShiftLeft0~6_combout\,
	combout => \inst|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X38_Y8_N4
\inst|ShiftLeft0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~14_combout\ = (!\inst3|REGISTER_B\(2) & ((\inst3|REGISTER_B\(1) & (\inst|ShiftLeft0~12_combout\)) # (!\inst3|REGISTER_B\(1) & ((\inst|ShiftLeft0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(1),
	datab => \inst|ShiftLeft0~12_combout\,
	datac => \inst|ShiftLeft0~13_combout\,
	datad => \inst3|REGISTER_B\(2),
	combout => \inst|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X35_Y7_N10
\inst|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\inst|Mux6~8_combout\ & ((\inst|Mux6~9_combout\ & (\inst|ShiftLeft0~14_combout\)) # (!\inst|Mux6~9_combout\ & ((!\inst|tmp2~91_combout\))))) # (!\inst|Mux6~8_combout\ & (((!\inst|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftLeft0~14_combout\,
	datab => \inst|tmp2~91_combout\,
	datac => \inst|Mux6~8_combout\,
	datad => \inst|Mux6~9_combout\,
	combout => \inst|Mux5~2_combout\);

-- Location: LCCOMB_X35_Y7_N20
\inst|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux5~3_combout\ = (\inst|Mux6~7_combout\ & (((\inst|Mux5~2_combout\)))) # (!\inst|Mux6~7_combout\ & ((\inst|Mux5~2_combout\ & (\inst|ShiftLeft0~11_combout\)) # (!\inst|Mux5~2_combout\ & ((\inst|ShiftLeft0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftLeft0~11_combout\,
	datab => \inst|ShiftLeft0~8_combout\,
	datac => \inst|Mux6~7_combout\,
	datad => \inst|Mux5~2_combout\,
	combout => \inst|Mux5~3_combout\);

-- Location: LCCOMB_X35_Y7_N2
\inst|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux5~4_combout\ = (\inst|Mux5~1_combout\) # ((\inst|Mux5~0_combout\) # ((\inst|Mux6~12_combout\ & \inst|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~1_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst|Mux6~12_combout\,
	datad => \inst|Mux5~3_combout\,
	combout => \inst|Mux5~4_combout\);

-- Location: FF_X35_Y7_N13
\inst3|instruction_register[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|Mux5~4_combout\,
	sload => VCC,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(11));

-- Location: LCCOMB_X34_Y8_N26
\inst1|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux11~1_combout\ = (\inst3|instruction_register\(12) & \inst1|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|instruction_register\(12),
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|Mux11~1_combout\);

-- Location: LCCOMB_X31_Y6_N18
\inst1|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux10~2_combout\ = ((\inst1|state.handle_arg_as_register~q\) # (\inst1|state.handle_args_as_registers~q\)) # (!\inst1|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux11~0_combout\,
	datac => \inst1|state.handle_arg_as_register~q\,
	datad => \inst1|state.handle_args_as_registers~q\,
	combout => \inst1|Mux10~2_combout\);

-- Location: CLKCTRL_G18
\inst1|Mux10~2clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|Mux10~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|Mux10~2clkctrl_outclk\);

-- Location: LCCOMB_X34_Y8_N24
\inst1|action[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|action\(2) = (GLOBAL(\inst1|Mux10~2clkctrl_outclk\) & ((\inst1|Mux11~1_combout\))) # (!GLOBAL(\inst1|Mux10~2clkctrl_outclk\) & (\inst1|action\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|action\(2),
	datac => \inst1|Mux11~1_combout\,
	datad => \inst1|Mux10~2clkctrl_outclk\,
	combout => \inst1|action\(2));

-- Location: LCCOMB_X34_Y8_N22
\inst1|action~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|action~3_combout\ = (\inst1|state.handle_arg_as_register~q\ & (\inst3|instruction_register\(12))) # (!\inst1|state.handle_arg_as_register~q\ & ((\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(12))) # 
-- (!\inst1|state.handle_args_as_registers~q\ & ((\inst1|action\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(12),
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst1|action\(2),
	combout => \inst1|action~3_combout\);

-- Location: LCCOMB_X34_Y8_N30
\inst1|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux15~0_combout\ = (\inst3|instruction_register\(10) & \inst1|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|instruction_register\(10),
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|Mux15~0_combout\);

-- Location: LCCOMB_X34_Y8_N0
\inst1|action[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|action\(0) = (GLOBAL(\inst1|Mux10~2clkctrl_outclk\) & ((\inst1|Mux15~0_combout\))) # (!GLOBAL(\inst1|Mux10~2clkctrl_outclk\) & (\inst1|action\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|action\(0),
	datac => \inst1|Mux15~0_combout\,
	datad => \inst1|Mux10~2clkctrl_outclk\,
	combout => \inst1|action\(0));

-- Location: LCCOMB_X34_Y8_N20
\inst1|action~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|action~1_combout\ = (\inst1|state.handle_arg_as_register~q\ & (\inst3|instruction_register\(10))) # (!\inst1|state.handle_arg_as_register~q\ & ((\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(10))) # 
-- (!\inst1|state.handle_args_as_registers~q\ & ((\inst1|action\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~q\,
	datab => \inst3|instruction_register\(10),
	datac => \inst1|state.handle_args_as_registers~q\,
	datad => \inst1|action\(0),
	combout => \inst1|action~1_combout\);

-- Location: LCCOMB_X34_Y8_N16
\inst1|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = (\inst1|action~3_combout\) # ((\inst1|action~1_combout\ $ (\inst1|action~2_combout\)) # (!\inst1|action~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|action~3_combout\,
	datab => \inst1|action~1_combout\,
	datac => \inst1|action~0_combout\,
	datad => \inst1|action~2_combout\,
	combout => \inst1|Mux11~0_combout\);

-- Location: LCCOMB_X34_Y8_N2
\inst1|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = (\inst3|instruction_register\(11) & \inst1|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|instruction_register\(11),
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|Mux12~0_combout\);

-- Location: LCCOMB_X34_Y8_N10
\inst1|action[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|action\(1) = (GLOBAL(\inst1|Mux10~2clkctrl_outclk\) & (\inst1|Mux12~0_combout\)) # (!GLOBAL(\inst1|Mux10~2clkctrl_outclk\) & ((\inst1|action\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux12~0_combout\,
	datac => \inst1|action\(1),
	datad => \inst1|Mux10~2clkctrl_outclk\,
	combout => \inst1|action\(1));

-- Location: LCCOMB_X34_Y8_N12
\inst1|action~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|action~2_combout\ = (\inst1|state.handle_args_as_registers~q\ & (((\inst3|instruction_register\(11))))) # (!\inst1|state.handle_args_as_registers~q\ & ((\inst1|state.handle_arg_as_register~q\ & (\inst3|instruction_register\(11))) # 
-- (!\inst1|state.handle_arg_as_register~q\ & ((\inst1|action\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst3|instruction_register\(11),
	datad => \inst1|action\(1),
	combout => \inst1|action~2_combout\);

-- Location: LCCOMB_X34_Y8_N6
\inst1|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = (!\inst1|action~2_combout\ & (!\inst1|action~1_combout\ & (!\inst1|action~3_combout\ & \inst1|action~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|action~2_combout\,
	datab => \inst1|action~1_combout\,
	datac => \inst1|action~3_combout\,
	datad => \inst1|action~0_combout\,
	combout => \inst1|Mux14~0_combout\);

-- Location: LCCOMB_X31_Y10_N28
\inst|Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst1|Mux14~0_combout\ & (\inst3|REGISTER_B\(0))) # (!\inst1|Mux14~0_combout\ & (((\inst1|Mux13~0_combout\ & \inst3|REGISTER_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux14~0_combout\,
	datab => \inst3|REGISTER_B\(0),
	datac => \inst1|Mux13~0_combout\,
	datad => \inst3|REGISTER_A\(0),
	combout => \inst|Mux16~0_combout\);

-- Location: FF_X31_Y10_N13
\inst3|instruction_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(0));

-- Location: LCCOMB_X31_Y11_N20
\inst3|Mux219~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux219~0_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(0) & ((\inst3|instruction_register\(1)) # (!\inst3|instruction_register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(3),
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(0),
	datad => \inst3|instruction_register\(1),
	combout => \inst3|Mux219~0_combout\);

-- Location: LCCOMB_X30_Y8_N26
\inst3|Mux217~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux217~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (((\inst3|Mux226~5_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|Mux226~5_combout\ & (\inst3|stack_pointer\(5))) # (!\inst3|Mux226~5_combout\ & 
-- ((\inst3|instruction_register\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datab => \inst3|stack_pointer\(5),
	datac => \inst3|Mux226~5_combout\,
	datad => \inst3|instruction_register\(5),
	combout => \inst3|Mux217~0_combout\);

-- Location: LCCOMB_X30_Y8_N4
\inst3|Mux217~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux217~1_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|Mux217~0_combout\ & (\inst3|tmp\(5))) # (!\inst3|Mux217~0_combout\ & ((\inst3|segment_offset_l_register\(5)))))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & 
-- (((\inst3|Mux217~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datab => \inst3|tmp\(5),
	datac => \inst3|Mux217~0_combout\,
	datad => \inst3|segment_offset_l_register\(5),
	combout => \inst3|Mux217~1_combout\);

-- Location: LCCOMB_X30_Y6_N8
\inst3|Mux217~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux217~2_combout\ = (\inst3|instruction_register\(1) & (\inst1|state.handle_args_as_registers~q\ & \inst3|program_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(1),
	datab => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|program_counter\(5),
	combout => \inst3|Mux217~2_combout\);

-- Location: LCCOMB_X30_Y6_N22
\inst3|Mux217~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux217~3_combout\ = (\inst3|Mux219~2_combout\ & ((\inst3|Mux219~3_combout\ & ((\inst3|segment_register\(5)))) # (!\inst3|Mux219~3_combout\ & (\inst3|Mux217~2_combout\)))) # (!\inst3|Mux219~2_combout\ & (!\inst3|Mux219~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~2_combout\,
	datab => \inst3|Mux219~3_combout\,
	datac => \inst3|Mux217~2_combout\,
	datad => \inst3|segment_register\(5),
	combout => \inst3|Mux217~3_combout\);

-- Location: LCCOMB_X31_Y7_N0
\inst3|Mux217~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux217~4_combout\ = (\inst3|Mux217~3_combout\ & (((\inst3|generic_register_a\(5))) # (!\inst3|Mux226~2_combout\))) # (!\inst3|Mux217~3_combout\ & (\inst3|Mux226~2_combout\ & ((\inst3|generic_register_c\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux217~3_combout\,
	datab => \inst3|Mux226~2_combout\,
	datac => \inst3|generic_register_a\(5),
	datad => \inst3|generic_register_c\(5),
	combout => \inst3|Mux217~4_combout\);

-- Location: LCCOMB_X31_Y7_N12
\inst3|Mux217~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux217~5_combout\ = (\inst3|Mux219~0_combout\ & ((\inst3|Mux217~1_combout\) # ((\inst3|Mux219~1_combout\)))) # (!\inst3|Mux219~0_combout\ & (((!\inst3|Mux219~1_combout\ & \inst3|Mux217~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~0_combout\,
	datab => \inst3|Mux217~1_combout\,
	datac => \inst3|Mux219~1_combout\,
	datad => \inst3|Mux217~4_combout\,
	combout => \inst3|Mux217~5_combout\);

-- Location: LCCOMB_X31_Y7_N10
\inst3|Mux217~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux217~6_combout\ = (\inst3|Mux217~5_combout\ & (((\inst3|generic_register_d\(5))) # (!\inst3|Mux219~1_combout\))) # (!\inst3|Mux217~5_combout\ & (\inst3|Mux219~1_combout\ & ((\inst3|generic_register_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux217~5_combout\,
	datab => \inst3|Mux219~1_combout\,
	datac => \inst3|generic_register_d\(5),
	datad => \inst3|generic_register_b\(5),
	combout => \inst3|Mux217~6_combout\);

-- Location: LCCOMB_X31_Y7_N6
\inst3|Mux217~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux217~7_combout\ = (\inst3|Mux217~6_combout\ & (((!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\) # (!\inst3|instruction_register\(2))) # (!\inst3|instruction_register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(3),
	datab => \inst3|instruction_register\(2),
	datac => \inst3|Mux217~6_combout\,
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux217~7_combout\);

-- Location: LCCOMB_X32_Y8_N0
\inst3|REGISTER_B[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(5) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|REGISTER_B\(5)))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|Mux217~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux217~7_combout\,
	datac => \inst3|Mux228~0clkctrl_outclk\,
	datad => \inst3|REGISTER_B\(5),
	combout => \inst3|REGISTER_B\(5));

-- Location: LCCOMB_X32_Y7_N28
\inst|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = \inst|Add26~0_combout\ $ (\inst|tmp2~94_combout\ $ (((\inst|tmp2~98_combout\) # (\inst|LessThan29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add26~0_combout\,
	datab => \inst|tmp2~94_combout\,
	datac => \inst|tmp2~98_combout\,
	datad => \inst|LessThan29~0_combout\,
	combout => \inst|Mux11~0_combout\);

-- Location: LCCOMB_X32_Y7_N30
\inst|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux11~1_combout\ = (\inst1|Mux13~0_combout\ & (((\inst|Mux11~0_combout\)))) # (!\inst1|Mux13~0_combout\ & (\inst3|REGISTER_B\(5) & (\inst1|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst3|REGISTER_B\(5),
	datac => \inst1|Mux14~0_combout\,
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux11~1_combout\);

-- Location: FF_X32_Y7_N31
\inst3|instruction_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|Mux11~1_combout\,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(5));

-- Location: LCCOMB_X31_Y8_N10
\inst3|Mux83~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~48_combout\ = (\inst3|instruction_register\(8) & !\inst3|instruction_register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|instruction_register\(8),
	datad => \inst3|instruction_register\(5),
	combout => \inst3|Mux83~48_combout\);

-- Location: LCCOMB_X32_Y9_N30
\inst3|Mux83~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~119_combout\ = (\inst3|Mux83~48_combout\ & (!\inst3|instruction_register\(6) & (\inst3|instruction_register\(7) & \inst1|state.save_to_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux83~48_combout\,
	datab => \inst3|instruction_register\(6),
	datac => \inst3|instruction_register\(7),
	datad => \inst1|state.save_to_register~q\,
	combout => \inst3|Mux83~119_combout\);

-- Location: FF_X32_Y9_N13
\inst3|flag_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux15~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|flag_register\(1));

-- Location: LCCOMB_X35_Y9_N22
\inst3|Mux230~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~4_combout\ = (\inst3|instruction_register\(6) & (\inst3|program_counter\(1) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst1|state.handle_arg_as_register~q\,
	datad => \inst3|program_counter\(1),
	combout => \inst3|Mux230~4_combout\);

-- Location: LCCOMB_X31_Y8_N0
\inst3|Mux230~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~5_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & (((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & ((\inst3|generic_register_c\(1)))) # 
-- (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (!\inst3|generic_register_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_a\(1),
	datab => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst3|generic_register_c\(1),
	combout => \inst3|Mux230~5_combout\);

-- Location: LCCOMB_X32_Y8_N18
\inst3|Mux230~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~6_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|Mux230~5_combout\ & (\inst3|generic_register_d\(1))) # (!\inst3|Mux230~5_combout\ & ((\inst3|generic_register_b\(1)))))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & 
-- (((\inst3|Mux230~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datab => \inst3|generic_register_d\(1),
	datac => \inst3|generic_register_b\(1),
	datad => \inst3|Mux230~5_combout\,
	combout => \inst3|Mux230~6_combout\);

-- Location: LCCOMB_X29_Y9_N20
\inst3|Mux230~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~7_combout\ = (\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & ((\inst3|stack_pointer\(1)) # ((\inst3|Mux239~0_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (((\inst3|instruction_register\(1) & !\inst3|Mux239~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stack_pointer\(1),
	datab => \inst3|instruction_register\(1),
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux230~7_combout\);

-- Location: LCCOMB_X29_Y9_N6
\inst3|Mux230~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~8_combout\ = (\inst3|Mux230~7_combout\ & ((\inst3|tmp\(1)) # ((!\inst3|Mux239~0_combout\)))) # (!\inst3|Mux230~7_combout\ & (((\inst3|segment_offset_l_register\(1) & \inst3|Mux239~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tmp\(1),
	datab => \inst3|Mux230~7_combout\,
	datac => \inst3|segment_offset_l_register\(1),
	datad => \inst3|Mux239~0_combout\,
	combout => \inst3|Mux230~8_combout\);

-- Location: LCCOMB_X31_Y9_N6
\inst3|Mux230~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~9_combout\ = (\inst3|Mux230~2_combout\ & (\inst3|Mux230~6_combout\ & ((\inst3|Mux230~0_combout\)))) # (!\inst3|Mux230~2_combout\ & (((\inst3|Mux230~8_combout\) # (!\inst3|Mux230~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux230~6_combout\,
	datab => \inst3|Mux230~8_combout\,
	datac => \inst3|Mux230~2_combout\,
	datad => \inst3|Mux230~0_combout\,
	combout => \inst3|Mux230~9_combout\);

-- Location: LCCOMB_X31_Y9_N4
\inst3|Mux230~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~10_combout\ = (\inst3|Mux230~1_combout\ & ((\inst3|Mux230~9_combout\ & ((\inst3|Mux230~4_combout\))) # (!\inst3|Mux230~9_combout\ & (\inst3|segment_register\(1))))) # (!\inst3|Mux230~1_combout\ & (((\inst3|Mux230~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_register\(1),
	datab => \inst3|Mux230~1_combout\,
	datac => \inst3|Mux230~4_combout\,
	datad => \inst3|Mux230~9_combout\,
	combout => \inst3|Mux230~10_combout\);

-- Location: LCCOMB_X31_Y9_N14
\inst3|Mux230~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~11_combout\ = (\inst3|Mux230~3_combout\ & (\inst3|flag_register\(1) & ((!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\)))) # (!\inst3|Mux230~3_combout\ & (((\inst3|Mux230~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|flag_register\(1),
	datab => \inst3|Mux230~10_combout\,
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst3|Mux230~3_combout\,
	combout => \inst3|Mux230~11_combout\);

-- Location: LCCOMB_X31_Y9_N2
\inst3|REGISTER_A[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(1) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(1))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux230~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_A\(1),
	datac => \inst3|Mux230~11_combout\,
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(1));

-- Location: LCCOMB_X31_Y10_N26
\inst|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst1|Mux13~0_combout\ & (((!\inst|Mux12~0_combout\)))) # (!\inst1|Mux13~0_combout\ & (\inst1|Mux14~0_combout\ & ((\inst3|REGISTER_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux14~0_combout\,
	datab => \inst|Mux12~0_combout\,
	datac => \inst1|Mux13~0_combout\,
	datad => \inst3|REGISTER_B\(1),
	combout => \inst|Mux15~0_combout\);

-- Location: LCCOMB_X31_Y10_N6
\inst|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux15~1_combout\ = \inst|Mux15~0_combout\ $ (((\inst1|Mux13~0_combout\ & !\inst3|REGISTER_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst3|REGISTER_A\(1),
	datac => \inst|Mux15~0_combout\,
	combout => \inst|Mux15~1_combout\);

-- Location: FF_X31_Y10_N3
\inst3|instruction_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|Mux15~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(1));

-- Location: LCCOMB_X29_Y10_N6
\inst3|Mux226~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~0_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(1) & ((\inst3|instruction_register\(0)) # (!\inst3|instruction_register\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst3|instruction_register\(3),
	datac => \inst3|instruction_register\(1),
	datad => \inst3|instruction_register\(0),
	combout => \inst3|Mux226~0_combout\);

-- Location: LCCOMB_X32_Y9_N14
\inst3|Mux220~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux220~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & ((\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (\inst3|segment_offset_h_register\(0))) 
-- # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|program_counter\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datac => \inst3|segment_offset_h_register\(0),
	datad => \inst3|program_counter\(8),
	combout => \inst3|Mux220~0_combout\);

-- Location: LCCOMB_X36_Y9_N16
\inst3|Mux220~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux220~1_combout\ = (\inst3|Mux220~0_combout\ & (((\inst3|tmp\(8)) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst3|Mux220~0_combout\ & (\inst3|stack_pointer\(8) & ((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux220~0_combout\,
	datab => \inst3|stack_pointer\(8),
	datac => \inst3|tmp\(8),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux220~1_combout\);

-- Location: LCCOMB_X35_Y9_N28
\inst3|Mux220~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux220~2_combout\ = (\inst3|instruction_register\(0) & (\inst1|state.handle_args_as_registers~q\ & \inst3|instruction_register\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(0),
	datab => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|instruction_register\(8),
	combout => \inst3|Mux220~2_combout\);

-- Location: LCCOMB_X35_Y9_N4
\inst3|Mux220~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux220~3_combout\ = (\inst3|Mux226~4_combout\ & (((\inst3|segment_register\(8) & \inst3|Mux226~3_combout\)))) # (!\inst3|Mux226~4_combout\ & ((\inst3|Mux220~2_combout\) # ((!\inst3|Mux226~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux220~2_combout\,
	datab => \inst3|segment_register\(8),
	datac => \inst3|Mux226~4_combout\,
	datad => \inst3|Mux226~3_combout\,
	combout => \inst3|Mux220~3_combout\);

-- Location: LCCOMB_X35_Y9_N14
\inst3|Mux220~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux220~4_combout\ = (\inst3|Mux226~2_combout\ & ((\inst3|Mux220~3_combout\ & (\inst3|generic_register_a\(8))) # (!\inst3|Mux220~3_combout\ & ((\inst3|generic_register_b\(8)))))) # (!\inst3|Mux226~2_combout\ & (\inst3|Mux220~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~2_combout\,
	datab => \inst3|Mux220~3_combout\,
	datac => \inst3|generic_register_a\(8),
	datad => \inst3|generic_register_b\(8),
	combout => \inst3|Mux220~4_combout\);

-- Location: LCCOMB_X36_Y9_N0
\inst3|Mux220~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux220~5_combout\ = (\inst3|Mux226~1_combout\ & (\inst3|Mux226~0_combout\)) # (!\inst3|Mux226~1_combout\ & ((\inst3|Mux226~0_combout\ & (\inst3|Mux220~1_combout\)) # (!\inst3|Mux226~0_combout\ & ((\inst3|Mux220~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~1_combout\,
	datab => \inst3|Mux226~0_combout\,
	datac => \inst3|Mux220~1_combout\,
	datad => \inst3|Mux220~4_combout\,
	combout => \inst3|Mux220~5_combout\);

-- Location: LCCOMB_X36_Y9_N2
\inst3|Mux220~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux220~6_combout\ = (\inst3|Mux220~5_combout\ & (((\inst3|generic_register_d\(8)) # (!\inst3|Mux226~1_combout\)))) # (!\inst3|Mux220~5_combout\ & (\inst3|generic_register_c\(8) & ((\inst3|Mux226~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux220~5_combout\,
	datab => \inst3|generic_register_c\(8),
	datac => \inst3|generic_register_d\(8),
	datad => \inst3|Mux226~1_combout\,
	combout => \inst3|Mux220~6_combout\);

-- Location: LCCOMB_X36_Y9_N4
\inst3|Mux220~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux220~7_combout\ = (\inst3|Mux220~6_combout\) # ((\inst3|instruction_register\(2) & (\inst3|instruction_register\(3) & \inst3|Mux226~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(2),
	datab => \inst3|instruction_register\(3),
	datac => \inst3|Mux220~6_combout\,
	datad => \inst3|Mux226~5_combout\,
	combout => \inst3|Mux220~7_combout\);

-- Location: LCCOMB_X36_Y9_N10
\inst3|REGISTER_B[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(8) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(8))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux220~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(8),
	datac => \inst3|Mux220~7_combout\,
	datad => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(8));

-- Location: LCCOMB_X32_Y7_N6
\inst|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = \inst|tmp2~98_combout\ $ (((!\inst|tmp2~92_combout\ & ((!\inst|tmp2~97_combout\) # (!\inst|tmp2~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~96_combout\,
	datab => \inst|tmp2~92_combout\,
	datac => \inst|tmp2~98_combout\,
	datad => \inst|tmp2~97_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X32_Y7_N24
\inst|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux8~1_combout\ = (\inst1|Mux14~0_combout\ & (((\inst3|REGISTER_B\(8))))) # (!\inst1|Mux14~0_combout\ & (\inst1|Mux13~0_combout\ & ((\inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst3|REGISTER_B\(8),
	datac => \inst1|Mux14~0_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst|Mux8~1_combout\);

-- Location: FF_X32_Y7_N25
\inst3|instruction_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|Mux8~1_combout\,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(8));

-- Location: LCCOMB_X31_Y6_N30
\inst3|Mux230~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux230~2_combout\ = (\inst1|action~4_combout\ & ((\inst3|instruction_register\(8)) # ((!\inst3|instruction_register\(5) & \inst3|instruction_register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|action~4_combout\,
	datab => \inst3|instruction_register\(8),
	datac => \inst3|instruction_register\(5),
	datad => \inst3|instruction_register\(7),
	combout => \inst3|Mux230~2_combout\);

-- Location: LCCOMB_X30_Y9_N0
\inst3|Mux231~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux231~3_combout\ = (\inst3|Mux239~0_combout\ & (((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\)))) # (!\inst3|Mux239~0_combout\ & ((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & ((\inst3|stack_pointer\(2)))) # 
-- (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (\inst3|instruction_register\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux239~0_combout\,
	datab => \inst3|instruction_register\(2),
	datac => \inst3|stack_pointer\(2),
	datad => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	combout => \inst3|Mux231~3_combout\);

-- Location: LCCOMB_X30_Y9_N30
\inst3|Mux231~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux231~4_combout\ = (\inst3|Mux239~0_combout\ & ((\inst3|Mux231~3_combout\ & ((\inst3|tmp\(2)))) # (!\inst3|Mux231~3_combout\ & (\inst3|segment_offset_l_register\(2))))) # (!\inst3|Mux239~0_combout\ & (((\inst3|Mux231~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_offset_l_register\(2),
	datab => \inst3|Mux239~0_combout\,
	datac => \inst3|tmp\(2),
	datad => \inst3|Mux231~3_combout\,
	combout => \inst3|Mux231~4_combout\);

-- Location: LCCOMB_X31_Y10_N24
\inst3|Mux231~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux231~1_combout\ = (\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & ((\inst3|generic_register_c\(2)) # ((\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\ & (((\inst3|generic_register_a\(2) & 
-- !\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_c\(2),
	datab => \inst3|generic_register_a\(2),
	datac => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datad => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	combout => \inst3|Mux231~1_combout\);

-- Location: LCCOMB_X30_Y10_N30
\inst3|Mux231~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux231~2_combout\ = (\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & ((\inst3|Mux231~1_combout\ & ((\inst3|generic_register_d\(2)))) # (!\inst3|Mux231~1_combout\ & (\inst3|generic_register_b\(2))))) # (!\inst1|REGISTER_ID_TO_READ_A[0]~0_combout\ & 
-- (((\inst3|Mux231~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_b\(2),
	datab => \inst1|REGISTER_ID_TO_READ_A[0]~0_combout\,
	datac => \inst3|generic_register_d\(2),
	datad => \inst3|Mux231~1_combout\,
	combout => \inst3|Mux231~2_combout\);

-- Location: LCCOMB_X31_Y9_N12
\inst3|Mux231~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux231~5_combout\ = (\inst3|Mux230~2_combout\ & (((\inst3|Mux231~2_combout\ & \inst3|Mux230~0_combout\)))) # (!\inst3|Mux230~2_combout\ & ((\inst3|Mux231~4_combout\) # ((!\inst3|Mux230~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux230~2_combout\,
	datab => \inst3|Mux231~4_combout\,
	datac => \inst3|Mux231~2_combout\,
	datad => \inst3|Mux230~0_combout\,
	combout => \inst3|Mux231~5_combout\);

-- Location: LCCOMB_X31_Y6_N2
\inst3|Mux231~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux231~0_combout\ = (\inst3|instruction_register\(6) & (\inst3|program_counter\(2) & ((\inst1|state.handle_args_as_registers~q\) # (\inst1|state.handle_arg_as_register~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst1|state.handle_arg_as_register~q\,
	datac => \inst3|instruction_register\(6),
	datad => \inst3|program_counter\(2),
	combout => \inst3|Mux231~0_combout\);

-- Location: LCCOMB_X31_Y9_N24
\inst3|Mux231~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux231~6_combout\ = (\inst3|Mux231~5_combout\ & ((\inst3|Mux231~0_combout\) # ((!\inst3|Mux230~1_combout\)))) # (!\inst3|Mux231~5_combout\ & (((\inst3|segment_register\(2) & \inst3|Mux230~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux231~5_combout\,
	datab => \inst3|Mux231~0_combout\,
	datac => \inst3|segment_register\(2),
	datad => \inst3|Mux230~1_combout\,
	combout => \inst3|Mux231~6_combout\);

-- Location: LCCOMB_X31_Y9_N22
\inst3|Mux231~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux231~7_combout\ = (\inst3|Mux230~3_combout\ & (((\inst1|REGISTER_ID_TO_READ_A[1]~1_combout\) # (\inst3|flag_register\(2))))) # (!\inst3|Mux230~3_combout\ & (\inst3|Mux231~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux231~6_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_A[1]~1_combout\,
	datac => \inst3|flag_register\(2),
	datad => \inst3|Mux230~3_combout\,
	combout => \inst3|Mux231~7_combout\);

-- Location: LCCOMB_X31_Y9_N28
\inst3|REGISTER_A[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_A\(2) = (GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & (\inst3|REGISTER_A\(2))) # (!GLOBAL(\inst3|Mux245~0clkctrl_outclk\) & ((\inst3|Mux231~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_A\(2),
	datac => \inst3|Mux231~7_combout\,
	datad => \inst3|Mux245~0clkctrl_outclk\,
	combout => \inst3|REGISTER_A\(2));

-- Location: LCCOMB_X35_Y7_N24
\inst|LessThan28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan28~1_combout\ = (\inst3|REGISTER_A\(1)) # (\inst3|REGISTER_A\(2) $ (((\inst|tmp2~94_combout\) # (\inst|Add26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_A\(2),
	datab => \inst3|REGISTER_A\(1),
	datac => \inst|tmp2~94_combout\,
	datad => \inst|Add26~0_combout\,
	combout => \inst|LessThan28~1_combout\);

-- Location: LCCOMB_X31_Y10_N8
\inst|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst1|Mux13~0_combout\ & (((!\inst|Mux12~0_combout\)))) # (!\inst1|Mux13~0_combout\ & (\inst1|Mux14~0_combout\ & (\inst3|REGISTER_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux14~0_combout\,
	datab => \inst3|REGISTER_B\(3),
	datac => \inst|Mux12~0_combout\,
	datad => \inst1|Mux13~0_combout\,
	combout => \inst|Mux13~0_combout\);

-- Location: LCCOMB_X31_Y10_N30
\inst|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux13~1_combout\ = (\inst1|Mux13~0_combout\ & (\inst|tmp2~99_combout\ $ (((\inst|LessThan28~1_combout\ & !\inst|Mux13~0_combout\))))) # (!\inst1|Mux13~0_combout\ & (((\inst|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst|LessThan28~1_combout\,
	datac => \inst|Mux13~0_combout\,
	datad => \inst|tmp2~99_combout\,
	combout => \inst|Mux13~1_combout\);

-- Location: FF_X31_Y10_N17
\inst3|instruction_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|Mux13~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(3));

-- Location: LCCOMB_X30_Y9_N20
\inst3|Mux218~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux218~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (((\inst3|Mux226~5_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|Mux226~5_combout\ & (\inst3|stack_pointer\(6))) # (!\inst3|Mux226~5_combout\ & 
-- ((\inst3|instruction_register\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datab => \inst3|stack_pointer\(6),
	datac => \inst3|instruction_register\(6),
	datad => \inst3|Mux226~5_combout\,
	combout => \inst3|Mux218~0_combout\);

-- Location: LCCOMB_X30_Y9_N26
\inst3|Mux218~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux218~1_combout\ = (\inst3|Mux218~0_combout\ & (((\inst3|tmp\(6)) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)))) # (!\inst3|Mux218~0_combout\ & (\inst3|segment_offset_l_register\(6) & ((\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux218~0_combout\,
	datab => \inst3|segment_offset_l_register\(6),
	datac => \inst3|tmp\(6),
	datad => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	combout => \inst3|Mux218~1_combout\);

-- Location: LCCOMB_X30_Y6_N28
\inst3|Mux218~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux218~2_combout\ = (\inst3|instruction_register\(1) & (\inst1|state.handle_args_as_registers~q\ & \inst3|program_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(1),
	datab => \inst1|state.handle_args_as_registers~q\,
	datad => \inst3|program_counter\(6),
	combout => \inst3|Mux218~2_combout\);

-- Location: LCCOMB_X30_Y6_N26
\inst3|Mux218~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux218~3_combout\ = (\inst3|Mux219~3_combout\ & (\inst3|Mux219~2_combout\ & ((\inst3|segment_register\(6))))) # (!\inst3|Mux219~3_combout\ & (((\inst3|Mux218~2_combout\)) # (!\inst3|Mux219~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~3_combout\,
	datab => \inst3|Mux219~2_combout\,
	datac => \inst3|Mux218~2_combout\,
	datad => \inst3|segment_register\(6),
	combout => \inst3|Mux218~3_combout\);

-- Location: LCCOMB_X31_Y7_N26
\inst3|Mux218~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux218~4_combout\ = (\inst3|Mux226~2_combout\ & ((\inst3|Mux218~3_combout\ & ((\inst3|generic_register_a\(6)))) # (!\inst3|Mux218~3_combout\ & (\inst3|generic_register_c\(6))))) # (!\inst3|Mux226~2_combout\ & (((\inst3|Mux218~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_c\(6),
	datab => \inst3|Mux226~2_combout\,
	datac => \inst3|generic_register_a\(6),
	datad => \inst3|Mux218~3_combout\,
	combout => \inst3|Mux218~4_combout\);

-- Location: LCCOMB_X31_Y7_N8
\inst3|Mux218~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux218~5_combout\ = (\inst3|Mux219~0_combout\ & (\inst3|Mux219~1_combout\)) # (!\inst3|Mux219~0_combout\ & ((\inst3|Mux219~1_combout\ & ((\inst3|generic_register_b\(6)))) # (!\inst3|Mux219~1_combout\ & (\inst3|Mux218~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux219~0_combout\,
	datab => \inst3|Mux219~1_combout\,
	datac => \inst3|Mux218~4_combout\,
	datad => \inst3|generic_register_b\(6),
	combout => \inst3|Mux218~5_combout\);

-- Location: LCCOMB_X31_Y7_N22
\inst3|Mux218~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux218~6_combout\ = (\inst3|Mux218~5_combout\ & (((\inst3|generic_register_d\(6)) # (!\inst3|Mux219~0_combout\)))) # (!\inst3|Mux218~5_combout\ & (\inst3|Mux218~1_combout\ & ((\inst3|Mux219~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux218~1_combout\,
	datab => \inst3|Mux218~5_combout\,
	datac => \inst3|generic_register_d\(6),
	datad => \inst3|Mux219~0_combout\,
	combout => \inst3|Mux218~6_combout\);

-- Location: LCCOMB_X31_Y7_N28
\inst3|Mux218~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux218~7_combout\ = (\inst3|Mux218~6_combout\) # ((\inst3|instruction_register\(3) & (\inst3|instruction_register\(2) & \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(3),
	datab => \inst3|Mux218~6_combout\,
	datac => \inst3|instruction_register\(2),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux218~7_combout\);

-- Location: LCCOMB_X31_Y7_N20
\inst3|REGISTER_B[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(6) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(6))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux218~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(6),
	datab => \inst3|Mux218~7_combout\,
	datad => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(6));

-- Location: LCCOMB_X32_Y7_N18
\inst|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = \inst|tmp2~97_combout\ $ (((\inst|tmp2~96_combout\ & ((\inst|tmp2~98_combout\) # (\inst|LessThan29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~96_combout\,
	datab => \inst|tmp2~97_combout\,
	datac => \inst|tmp2~98_combout\,
	datad => \inst|LessThan29~0_combout\,
	combout => \inst|Mux10~0_combout\);

-- Location: LCCOMB_X32_Y7_N12
\inst|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux10~1_combout\ = (\inst1|Mux13~0_combout\ & (((!\inst|Mux10~0_combout\)))) # (!\inst1|Mux13~0_combout\ & (\inst3|REGISTER_B\(6) & (\inst1|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst3|REGISTER_B\(6),
	datac => \inst1|Mux14~0_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|Mux10~1_combout\);

-- Location: FF_X32_Y7_N13
\inst3|instruction_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|Mux10~1_combout\,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(6));

-- Location: LCCOMB_X31_Y8_N16
\inst3|Mux83~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux83~113_combout\ = (\inst3|instruction_register\(6) & (!\inst3|instruction_register\(7) & (\inst3|Mux83~48_combout\ & \inst1|state.save_to_register~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(6),
	datab => \inst3|instruction_register\(7),
	datac => \inst3|Mux83~48_combout\,
	datad => \inst1|state.save_to_register~q\,
	combout => \inst3|Mux83~113_combout\);

-- Location: FF_X35_Y6_N25
\inst3|generic_register_c[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux3~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|generic_register_c\(13));

-- Location: LCCOMB_X35_Y10_N4
\inst3|Mux225~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux225~2_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(13) & \inst3|instruction_register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(13),
	datad => \inst3|instruction_register\(0),
	combout => \inst3|Mux225~2_combout\);

-- Location: LCCOMB_X35_Y10_N6
\inst3|Mux225~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux225~3_combout\ = (\inst3|Mux226~3_combout\ & ((\inst3|Mux226~4_combout\ & ((\inst3|segment_register\(13)))) # (!\inst3|Mux226~4_combout\ & (\inst3|Mux225~2_combout\)))) # (!\inst3|Mux226~3_combout\ & (((!\inst3|Mux226~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~3_combout\,
	datab => \inst3|Mux225~2_combout\,
	datac => \inst3|segment_register\(13),
	datad => \inst3|Mux226~4_combout\,
	combout => \inst3|Mux225~3_combout\);

-- Location: LCCOMB_X35_Y10_N12
\inst3|Mux225~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux225~4_combout\ = (\inst3|Mux225~3_combout\ & (((\inst3|generic_register_a\(13)) # (!\inst3|Mux226~2_combout\)))) # (!\inst3|Mux225~3_combout\ & (\inst3|generic_register_b\(13) & ((\inst3|Mux226~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux225~3_combout\,
	datab => \inst3|generic_register_b\(13),
	datac => \inst3|generic_register_a\(13),
	datad => \inst3|Mux226~2_combout\,
	combout => \inst3|Mux225~4_combout\);

-- Location: LCCOMB_X34_Y10_N8
\inst3|Mux225~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux225~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & (((\inst3|stack_pointer\(13)) # (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & (\inst3|program_counter\(13) & 
-- ((!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datab => \inst3|program_counter\(13),
	datac => \inst3|stack_pointer\(13),
	datad => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	combout => \inst3|Mux225~0_combout\);

-- Location: LCCOMB_X34_Y10_N22
\inst3|Mux225~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux225~1_combout\ = (\inst3|Mux225~0_combout\ & (((\inst3|tmp\(13)) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)))) # (!\inst3|Mux225~0_combout\ & (\inst3|segment_offset_h_register\(5) & ((\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux225~0_combout\,
	datab => \inst3|segment_offset_h_register\(5),
	datac => \inst3|tmp\(13),
	datad => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	combout => \inst3|Mux225~1_combout\);

-- Location: LCCOMB_X30_Y10_N28
\inst3|Mux225~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux225~5_combout\ = (\inst3|Mux226~0_combout\ & (((\inst3|Mux226~1_combout\) # (\inst3|Mux225~1_combout\)))) # (!\inst3|Mux226~0_combout\ & (\inst3|Mux225~4_combout\ & (!\inst3|Mux226~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~0_combout\,
	datab => \inst3|Mux225~4_combout\,
	datac => \inst3|Mux226~1_combout\,
	datad => \inst3|Mux225~1_combout\,
	combout => \inst3|Mux225~5_combout\);

-- Location: LCCOMB_X30_Y10_N8
\inst3|Mux225~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux225~6_combout\ = (\inst3|Mux226~1_combout\ & ((\inst3|Mux225~5_combout\ & ((\inst3|generic_register_d\(13)))) # (!\inst3|Mux225~5_combout\ & (\inst3|generic_register_c\(13))))) # (!\inst3|Mux226~1_combout\ & (((\inst3|Mux225~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_c\(13),
	datab => \inst3|Mux226~1_combout\,
	datac => \inst3|generic_register_d\(13),
	datad => \inst3|Mux225~5_combout\,
	combout => \inst3|Mux225~6_combout\);

-- Location: LCCOMB_X30_Y10_N22
\inst3|Mux225~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux225~7_combout\ = (\inst3|Mux225~6_combout\ & (((!\inst3|instruction_register\(2)) # (!\inst3|Mux226~5_combout\)) # (!\inst3|instruction_register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux225~6_combout\,
	datab => \inst3|instruction_register\(3),
	datac => \inst3|Mux226~5_combout\,
	datad => \inst3|instruction_register\(2),
	combout => \inst3|Mux225~7_combout\);

-- Location: LCCOMB_X30_Y10_N12
\inst3|REGISTER_B[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(13) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(13))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux225~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(13),
	datac => \inst3|Mux225~7_combout\,
	datad => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(13));

-- Location: LCCOMB_X35_Y10_N24
\inst|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = \inst|tmp2~70_combout\ $ (((!\inst|tmp2~80_combout\ & ((!\inst|tmp2~79_combout\) # (!\inst|tmp2~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~78_combout\,
	datab => \inst|tmp2~79_combout\,
	datac => \inst|tmp2~80_combout\,
	datad => \inst|tmp2~70_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y10_N18
\inst|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst1|Mux14~0_combout\ & (\inst3|REGISTER_B\(13))) # (!\inst1|Mux14~0_combout\ & (((\inst1|Mux13~0_combout\ & \inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(13),
	datab => \inst1|Mux13~0_combout\,
	datac => \inst1|Mux14~0_combout\,
	datad => \inst|Mux3~0_combout\,
	combout => \inst|Mux3~1_combout\);

-- Location: FF_X32_Y6_N7
\inst3|instruction_register[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux3~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(13));

-- Location: LCCOMB_X34_Y6_N10
\inst1|state.handle_arg_as_register~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|state.handle_arg_as_register~1_combout\ = (\inst1|state.handle_arg_as_register~0_combout\ & (!\inst3|instruction_register\(13) & (\inst1|lifecycle.decode_instruction~q\ & !\inst3|instruction_register\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_arg_as_register~0_combout\,
	datab => \inst3|instruction_register\(13),
	datac => \inst1|lifecycle.decode_instruction~q\,
	datad => \inst3|instruction_register\(15),
	combout => \inst1|state.handle_arg_as_register~1_combout\);

-- Location: FF_X34_Y6_N11
\inst1|state.handle_arg_as_register\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|state.handle_arg_as_register~1_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.handle_arg_as_register~q\);

-- Location: LCCOMB_X34_Y8_N18
\inst1|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\inst1|action~0_combout\ & (!\inst1|action~3_combout\ & (\inst1|action~2_combout\ $ (!\inst1|action~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|action~0_combout\,
	datab => \inst1|action~3_combout\,
	datac => \inst1|action~2_combout\,
	datad => \inst1|action~1_combout\,
	combout => \inst1|Mux9~0_combout\);

-- Location: LCCOMB_X34_Y8_N28
\inst1|action[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|action\(3) = (GLOBAL(\inst1|Mux10~2clkctrl_outclk\) & ((!\inst1|Mux9~0_combout\))) # (!GLOBAL(\inst1|Mux10~2clkctrl_outclk\) & (\inst1|action\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|action\(3),
	datac => \inst1|Mux10~2clkctrl_outclk\,
	datad => \inst1|Mux9~0_combout\,
	combout => \inst1|action\(3));

-- Location: LCCOMB_X34_Y8_N8
\inst1|action~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|action~0_combout\ = (\inst1|state.handle_args_as_registers~q\) # ((\inst1|state.handle_arg_as_register~q\) # (\inst1|action\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datac => \inst1|state.handle_arg_as_register~q\,
	datad => \inst1|action\(3),
	combout => \inst1|action~0_combout\);

-- Location: LCCOMB_X34_Y8_N4
\inst1|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = (\inst1|action~0_combout\ & (!\inst1|action~3_combout\ & (\inst1|action~1_combout\ & \inst1|action~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|action~0_combout\,
	datab => \inst1|action~3_combout\,
	datac => \inst1|action~1_combout\,
	datad => \inst1|action~2_combout\,
	combout => \inst1|Mux13~0_combout\);

-- Location: LCCOMB_X31_Y10_N22
\inst|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (\inst1|Mux13~0_combout\ & (((!\inst|Mux12~0_combout\)))) # (!\inst1|Mux13~0_combout\ & (\inst1|Mux14~0_combout\ & (\inst3|REGISTER_B\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux14~0_combout\,
	datab => \inst3|REGISTER_B\(2),
	datac => \inst|Mux12~0_combout\,
	datad => \inst1|Mux13~0_combout\,
	combout => \inst|Mux14~0_combout\);

-- Location: LCCOMB_X31_Y10_N10
\inst|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux14~1_combout\ = (\inst1|Mux13~0_combout\ & (\inst|tmp2~100_combout\ $ (((!\inst3|REGISTER_A\(1) & !\inst|Mux14~0_combout\))))) # (!\inst1|Mux13~0_combout\ & (((\inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux13~0_combout\,
	datab => \inst3|REGISTER_A\(1),
	datac => \inst|Mux14~0_combout\,
	datad => \inst|tmp2~100_combout\,
	combout => \inst|Mux14~1_combout\);

-- Location: FF_X31_Y10_N21
\inst3|instruction_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|Mux14~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(2));

-- Location: LCCOMB_X29_Y10_N18
\inst3|Mux227~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux227~2_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(15) & \inst3|instruction_register\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst3|instruction_register\(15),
	datad => \inst3|instruction_register\(0),
	combout => \inst3|Mux227~2_combout\);

-- Location: LCCOMB_X29_Y10_N4
\inst3|Mux227~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux227~3_combout\ = (\inst3|Mux226~3_combout\ & ((\inst3|Mux226~4_combout\ & (\inst3|segment_register\(15))) # (!\inst3|Mux226~4_combout\ & ((\inst3|Mux227~2_combout\))))) # (!\inst3|Mux226~3_combout\ & (((!\inst3|Mux226~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~3_combout\,
	datab => \inst3|segment_register\(15),
	datac => \inst3|Mux226~4_combout\,
	datad => \inst3|Mux227~2_combout\,
	combout => \inst3|Mux227~3_combout\);

-- Location: LCCOMB_X29_Y10_N26
\inst3|Mux227~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux227~4_combout\ = (\inst3|Mux227~3_combout\ & ((\inst3|generic_register_a\(15)) # ((!\inst3|Mux226~2_combout\)))) # (!\inst3|Mux227~3_combout\ & (((\inst3|generic_register_b\(15) & \inst3|Mux226~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux227~3_combout\,
	datab => \inst3|generic_register_a\(15),
	datac => \inst3|generic_register_b\(15),
	datad => \inst3|Mux226~2_combout\,
	combout => \inst3|Mux227~4_combout\);

-- Location: LCCOMB_X34_Y10_N20
\inst3|Mux227~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux227~0_combout\ = (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & (((\inst3|stack_pointer\(15)) # (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)))) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & (\inst3|program_counter\(15) & 
-- ((!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datab => \inst3|program_counter\(15),
	datac => \inst3|stack_pointer\(15),
	datad => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	combout => \inst3|Mux227~0_combout\);

-- Location: LCCOMB_X34_Y10_N30
\inst3|Mux227~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux227~1_combout\ = (\inst3|Mux227~0_combout\ & (((\inst3|tmp\(15)) # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)))) # (!\inst3|Mux227~0_combout\ & (\inst3|segment_offset_h_register\(7) & ((\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|segment_offset_h_register\(7),
	datab => \inst3|Mux227~0_combout\,
	datac => \inst3|tmp\(15),
	datad => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	combout => \inst3|Mux227~1_combout\);

-- Location: LCCOMB_X29_Y10_N8
\inst3|Mux227~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux227~5_combout\ = (\inst3|Mux226~1_combout\ & (((\inst3|Mux226~0_combout\)))) # (!\inst3|Mux226~1_combout\ & ((\inst3|Mux226~0_combout\ & ((\inst3|Mux227~1_combout\))) # (!\inst3|Mux226~0_combout\ & (\inst3|Mux227~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~1_combout\,
	datab => \inst3|Mux227~4_combout\,
	datac => \inst3|Mux226~0_combout\,
	datad => \inst3|Mux227~1_combout\,
	combout => \inst3|Mux227~5_combout\);

-- Location: LCCOMB_X29_Y10_N22
\inst3|Mux227~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux227~6_combout\ = (\inst3|Mux227~5_combout\ & (((\inst3|generic_register_d\(15)) # (!\inst3|Mux226~1_combout\)))) # (!\inst3|Mux227~5_combout\ & (\inst3|generic_register_c\(15) & ((\inst3|Mux226~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux227~5_combout\,
	datab => \inst3|generic_register_c\(15),
	datac => \inst3|generic_register_d\(15),
	datad => \inst3|Mux226~1_combout\,
	combout => \inst3|Mux227~6_combout\);

-- Location: LCCOMB_X29_Y10_N12
\inst3|Mux227~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux227~7_combout\ = (\inst3|Mux227~6_combout\ & (((!\inst3|Mux226~5_combout\) # (!\inst3|instruction_register\(3))) # (!\inst3|instruction_register\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(2),
	datab => \inst3|instruction_register\(3),
	datac => \inst3|Mux227~6_combout\,
	datad => \inst3|Mux226~5_combout\,
	combout => \inst3|Mux227~7_combout\);

-- Location: LCCOMB_X29_Y10_N10
\inst3|REGISTER_B[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(15) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(15))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux227~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(15),
	datac => \inst3|Mux227~7_combout\,
	datad => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(15));

-- Location: LCCOMB_X35_Y10_N28
\inst|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = \inst|tmp2~48_combout\ $ (((!\inst|tmp2~58_combout\ & ((!\inst|tmp2~56_combout\) # (!\inst|tmp2~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~57_combout\,
	datab => \inst|tmp2~56_combout\,
	datac => \inst|tmp2~48_combout\,
	datad => \inst|tmp2~58_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y10_N2
\inst|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst1|Mux14~0_combout\ & (\inst3|REGISTER_B\(15))) # (!\inst1|Mux14~0_combout\ & (((\inst1|Mux13~0_combout\ & \inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(15),
	datab => \inst1|Mux13~0_combout\,
	datac => \inst1|Mux14~0_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y6_N22
\inst3|instruction_register[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|instruction_register[15]~feeder_combout\ = \inst|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux1~1_combout\,
	combout => \inst3|instruction_register[15]~feeder_combout\);

-- Location: FF_X32_Y6_N23
\inst3|instruction_register[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|instruction_register[15]~feeder_combout\,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(15));

-- Location: LCCOMB_X34_Y6_N26
\inst1|state.handle_args_as_registers~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|state.handle_args_as_registers~2_combout\ = (!\inst3|instruction_register\(14) & (\inst1|lifecycle.decode_instruction~q\ & !\inst3|instruction_register\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(14),
	datac => \inst1|lifecycle.decode_instruction~q\,
	datad => \inst3|instruction_register\(15),
	combout => \inst1|state.handle_args_as_registers~2_combout\);

-- Location: CLKCTRL_G19
\RESET~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X34_Y6_N27
\inst1|lifecycle.save_to_register\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|state.handle_args_as_registers~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lifecycle.save_to_register~q\);

-- Location: LCCOMB_X34_Y6_N12
\inst1|lifecycle~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|lifecycle~8_combout\ = (\inst1|lifecycle.decode_instruction~q\ & ((\inst3|instruction_register\(15)) # ((\inst3|instruction_register\(14) & \inst3|instruction_register\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(14),
	datab => \inst3|instruction_register\(13),
	datac => \inst1|lifecycle.decode_instruction~q\,
	datad => \inst3|instruction_register\(15),
	combout => \inst1|lifecycle~8_combout\);

-- Location: FF_X34_Y6_N13
\inst1|lifecycle.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|lifecycle~8_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lifecycle.initial~q\);

-- Location: LCCOMB_X34_Y6_N16
\inst1|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (!\inst1|lifecycle.save_to_register~q\ & !\inst1|lifecycle.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lifecycle.save_to_register~q\,
	datac => \inst1|lifecycle.initial~q\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X34_Y6_N17
\inst1|lifecycle.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lifecycle.fetch~q\);

-- Location: LCCOMB_X34_Y6_N14
\inst1|Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector4~1_combout\ = (\inst1|Selector4~0_combout\) # (!\inst1|lifecycle.fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector4~0_combout\,
	datad => \inst1|lifecycle.fetch~q\,
	combout => \inst1|Selector4~1_combout\);

-- Location: FF_X34_Y6_N15
\inst1|lifecycle.decode_instruction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector4~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lifecycle.decode_instruction~q\);

-- Location: LCCOMB_X34_Y6_N18
\inst1|state.handle_args_as_registers~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|state.handle_args_as_registers~0_combout\ = (!\inst3|instruction_register\(14) & (\inst1|lifecycle.decode_instruction~q\ & (\inst3|instruction_register\(13) & !\inst3|instruction_register\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(14),
	datab => \inst1|lifecycle.decode_instruction~q\,
	datac => \inst3|instruction_register\(13),
	datad => \inst3|instruction_register\(15),
	combout => \inst1|state.handle_args_as_registers~0_combout\);

-- Location: LCCOMB_X34_Y6_N30
\inst1|state.handle_args_as_registers~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|state.handle_args_as_registers~1_combout\ = (\RESET~input_o\ & (\inst1|state.handle_args_as_registers~q\)) # (!\RESET~input_o\ & ((\inst1|Selector4~0_combout\ & (\inst1|state.handle_args_as_registers~q\)) # (!\inst1|Selector4~0_combout\ & 
-- ((\inst1|state.handle_args_as_registers~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst1|state.handle_args_as_registers~q\,
	datac => \inst1|Selector4~0_combout\,
	datad => \inst1|state.handle_args_as_registers~0_combout\,
	combout => \inst1|state.handle_args_as_registers~1_combout\);

-- Location: FF_X31_Y6_N7
\inst1|state.handle_args_as_registers\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|state.handle_args_as_registers~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.handle_args_as_registers~q\);

-- Location: LCCOMB_X29_Y10_N28
\inst3|Mux226~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~1_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(3) & \inst3|instruction_register\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst3|instruction_register\(3),
	datac => \inst3|instruction_register\(1),
	combout => \inst3|Mux226~1_combout\);

-- Location: LCCOMB_X32_Y6_N26
\inst3|Mux226~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~10_combout\ = (\inst1|state.handle_args_as_registers~q\ & (\inst3|instruction_register\(0) & \inst3|instruction_register\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.handle_args_as_registers~q\,
	datab => \inst3|instruction_register\(0),
	datac => \inst3|instruction_register\(14),
	combout => \inst3|Mux226~10_combout\);

-- Location: LCCOMB_X32_Y6_N28
\inst3|Mux226~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~11_combout\ = (\inst3|Mux226~3_combout\ & ((\inst3|Mux226~4_combout\ & ((\inst3|segment_register\(14)))) # (!\inst3|Mux226~4_combout\ & (\inst3|Mux226~10_combout\)))) # (!\inst3|Mux226~3_combout\ & (((!\inst3|Mux226~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~10_combout\,
	datab => \inst3|Mux226~3_combout\,
	datac => \inst3|segment_register\(14),
	datad => \inst3|Mux226~4_combout\,
	combout => \inst3|Mux226~11_combout\);

-- Location: LCCOMB_X35_Y10_N10
\inst3|Mux226~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~12_combout\ = (\inst3|Mux226~11_combout\ & (((\inst3|generic_register_a\(14)) # (!\inst3|Mux226~2_combout\)))) # (!\inst3|Mux226~11_combout\ & (\inst3|generic_register_b\(14) & ((\inst3|Mux226~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|generic_register_b\(14),
	datab => \inst3|Mux226~11_combout\,
	datac => \inst3|generic_register_a\(14),
	datad => \inst3|Mux226~2_combout\,
	combout => \inst3|Mux226~12_combout\);

-- Location: LCCOMB_X36_Y10_N12
\inst3|Mux226~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~13_combout\ = (\inst3|Mux226~1_combout\ & ((\inst3|generic_register_c\(14)) # ((\inst3|Mux226~0_combout\)))) # (!\inst3|Mux226~1_combout\ & (((!\inst3|Mux226~0_combout\ & \inst3|Mux226~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~1_combout\,
	datab => \inst3|generic_register_c\(14),
	datac => \inst3|Mux226~0_combout\,
	datad => \inst3|Mux226~12_combout\,
	combout => \inst3|Mux226~13_combout\);

-- Location: LCCOMB_X32_Y9_N20
\inst3|Mux226~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~8_combout\ = (\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & (\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\)) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\ & ((\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & (\inst3|segment_offset_h_register\(6))) 
-- # (!\inst1|REGISTER_ID_TO_READ_B[2]~0_combout\ & ((\inst3|program_counter\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	datab => \inst1|REGISTER_ID_TO_READ_B[2]~0_combout\,
	datac => \inst3|segment_offset_h_register\(6),
	datad => \inst3|program_counter\(14),
	combout => \inst3|Mux226~8_combout\);

-- Location: LCCOMB_X36_Y9_N24
\inst3|Mux226~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~9_combout\ = (\inst3|Mux226~8_combout\ & (((\inst3|tmp\(14)) # (!\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\)))) # (!\inst3|Mux226~8_combout\ & (\inst3|stack_pointer\(14) & ((\inst1|REGISTER_ID_TO_READ_B[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stack_pointer\(14),
	datab => \inst3|Mux226~8_combout\,
	datac => \inst3|tmp\(14),
	datad => \inst1|REGISTER_ID_TO_READ_B[0]~1_combout\,
	combout => \inst3|Mux226~9_combout\);

-- Location: LCCOMB_X36_Y10_N2
\inst3|Mux226~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~14_combout\ = (\inst3|Mux226~13_combout\ & (((\inst3|generic_register_d\(14))) # (!\inst3|Mux226~0_combout\))) # (!\inst3|Mux226~13_combout\ & (\inst3|Mux226~0_combout\ & (\inst3|Mux226~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~13_combout\,
	datab => \inst3|Mux226~0_combout\,
	datac => \inst3|Mux226~9_combout\,
	datad => \inst3|generic_register_d\(14),
	combout => \inst3|Mux226~14_combout\);

-- Location: LCCOMB_X36_Y10_N4
\inst3|Mux226~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|Mux226~15_combout\ = (\inst3|Mux226~14_combout\) # ((\inst3|Mux226~5_combout\ & (\inst3|instruction_register\(2) & \inst3|instruction_register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux226~14_combout\,
	datab => \inst3|Mux226~5_combout\,
	datac => \inst3|instruction_register\(2),
	datad => \inst3|instruction_register\(3),
	combout => \inst3|Mux226~15_combout\);

-- Location: LCCOMB_X36_Y10_N20
\inst3|REGISTER_B[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|REGISTER_B\(14) = (GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & (\inst3|REGISTER_B\(14))) # (!GLOBAL(\inst3|Mux228~0clkctrl_outclk\) & ((\inst3|Mux226~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|REGISTER_B\(14),
	datac => \inst3|Mux226~15_combout\,
	datad => \inst3|Mux228~0clkctrl_outclk\,
	combout => \inst3|REGISTER_B\(14));

-- Location: LCCOMB_X35_Y10_N16
\inst|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = \inst|tmp2~59_combout\ $ (((!\inst|tmp2~69_combout\ & ((!\inst|tmp2~67_combout\) # (!\inst|tmp2~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp2~69_combout\,
	datab => \inst|tmp2~59_combout\,
	datac => \inst|tmp2~68_combout\,
	datad => \inst|tmp2~67_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y10_N30
\inst|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst1|Mux14~0_combout\ & (\inst3|REGISTER_B\(14))) # (!\inst1|Mux14~0_combout\ & (((\inst1|Mux13~0_combout\ & \inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGISTER_B\(14),
	datab => \inst1|Mux13~0_combout\,
	datac => \inst1|Mux14~0_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: FF_X32_Y6_N27
\inst3|instruction_register[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Mux2~1_combout\,
	sload => VCC,
	ena => \inst3|Mux83~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|instruction_register\(14));

-- Location: LCCOMB_X34_Y6_N22
\inst1|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst3|instruction_register\(14) & (\inst1|lifecycle.decode_instruction~q\ & (!\inst3|instruction_register\(13) & !\inst3|instruction_register\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|instruction_register\(14),
	datab => \inst1|lifecycle.decode_instruction~q\,
	datac => \inst3|instruction_register\(13),
	datad => \inst3|instruction_register\(15),
	combout => \inst1|Selector4~0_combout\);

-- Location: LCCOMB_X34_Y6_N28
\inst1|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = ((\inst1|Selector4~0_combout\ & \inst1|state.fetch~q\)) # (!\inst1|lifecycle.fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector4~0_combout\,
	datac => \inst1|state.fetch~q\,
	datad => \inst1|lifecycle.fetch~q\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X34_Y6_N29
\inst1|state.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Selector1~0_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.fetch~q\);

-- Location: IOIBUF_X52_Y19_N1
\DATA_BUS_OUT[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(15),
	o => \DATA_BUS_OUT[15]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\DATA_BUS_OUT[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(14),
	o => \DATA_BUS_OUT[14]~input_o\);

-- Location: IOIBUF_X46_Y41_N8
\DATA_BUS_OUT[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(13),
	o => \DATA_BUS_OUT[13]~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\DATA_BUS_OUT[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(12),
	o => \DATA_BUS_OUT[12]~input_o\);

-- Location: IOIBUF_X7_Y41_N22
\DATA_BUS_OUT[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(11),
	o => \DATA_BUS_OUT[11]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\DATA_BUS_OUT[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(10),
	o => \DATA_BUS_OUT[10]~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\DATA_BUS_OUT[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(9),
	o => \DATA_BUS_OUT[9]~input_o\);

-- Location: IOIBUF_X52_Y30_N1
\DATA_BUS_OUT[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(8),
	o => \DATA_BUS_OUT[8]~input_o\);

-- Location: IOIBUF_X7_Y41_N15
\DATA_BUS_OUT[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(7),
	o => \DATA_BUS_OUT[7]~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\DATA_BUS_OUT[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(6),
	o => \DATA_BUS_OUT[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\DATA_BUS_OUT[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(5),
	o => \DATA_BUS_OUT[5]~input_o\);

-- Location: IOIBUF_X31_Y41_N1
\DATA_BUS_OUT[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(4),
	o => \DATA_BUS_OUT[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\DATA_BUS_OUT[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(3),
	o => \DATA_BUS_OUT[3]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\DATA_BUS_OUT[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(2),
	o => \DATA_BUS_OUT[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N8
\DATA_BUS_OUT[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(1),
	o => \DATA_BUS_OUT[1]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\DATA_BUS_OUT[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_OUT(0),
	o => \DATA_BUS_OUT[0]~input_o\);

-- Location: IOIBUF_X10_Y41_N1
\DATA_BUS_IN[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(15),
	o => \DATA_BUS_IN[15]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\DATA_BUS_IN[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(14),
	o => \DATA_BUS_IN[14]~input_o\);

-- Location: IOIBUF_X5_Y41_N8
\DATA_BUS_IN[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(13),
	o => \DATA_BUS_IN[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\DATA_BUS_IN[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(12),
	o => \DATA_BUS_IN[12]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\DATA_BUS_IN[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(11),
	o => \DATA_BUS_IN[11]~input_o\);

-- Location: IOIBUF_X46_Y41_N15
\DATA_BUS_IN[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(10),
	o => \DATA_BUS_IN[10]~input_o\);

-- Location: IOIBUF_X16_Y41_N1
\DATA_BUS_IN[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(9),
	o => \DATA_BUS_IN[9]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\DATA_BUS_IN[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(8),
	o => \DATA_BUS_IN[8]~input_o\);

-- Location: IOIBUF_X21_Y41_N1
\DATA_BUS_IN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(7),
	o => \DATA_BUS_IN[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\DATA_BUS_IN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(6),
	o => \DATA_BUS_IN[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\DATA_BUS_IN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(5),
	o => \DATA_BUS_IN[5]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\DATA_BUS_IN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(4),
	o => \DATA_BUS_IN[4]~input_o\);

-- Location: IOIBUF_X29_Y41_N1
\DATA_BUS_IN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(3),
	o => \DATA_BUS_IN[3]~input_o\);

-- Location: IOIBUF_X52_Y13_N8
\DATA_BUS_IN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(2),
	o => \DATA_BUS_IN[2]~input_o\);

-- Location: IOIBUF_X38_Y41_N1
\DATA_BUS_IN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(1),
	o => \DATA_BUS_IN[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\DATA_BUS_IN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_IN(0),
	o => \DATA_BUS_IN[0]~input_o\);

ww_WR <= \WR~output_o\;

ww_RD <= \RD~output_o\;

ww_ADDRESS_BUS(15) <= \ADDRESS_BUS[15]~output_o\;

ww_ADDRESS_BUS(14) <= \ADDRESS_BUS[14]~output_o\;

ww_ADDRESS_BUS(13) <= \ADDRESS_BUS[13]~output_o\;

ww_ADDRESS_BUS(12) <= \ADDRESS_BUS[12]~output_o\;

ww_ADDRESS_BUS(11) <= \ADDRESS_BUS[11]~output_o\;

ww_ADDRESS_BUS(10) <= \ADDRESS_BUS[10]~output_o\;

ww_ADDRESS_BUS(9) <= \ADDRESS_BUS[9]~output_o\;

ww_ADDRESS_BUS(8) <= \ADDRESS_BUS[8]~output_o\;

ww_ADDRESS_BUS(7) <= \ADDRESS_BUS[7]~output_o\;

ww_ADDRESS_BUS(6) <= \ADDRESS_BUS[6]~output_o\;

ww_ADDRESS_BUS(5) <= \ADDRESS_BUS[5]~output_o\;

ww_ADDRESS_BUS(4) <= \ADDRESS_BUS[4]~output_o\;

ww_ADDRESS_BUS(3) <= \ADDRESS_BUS[3]~output_o\;

ww_ADDRESS_BUS(2) <= \ADDRESS_BUS[2]~output_o\;

ww_ADDRESS_BUS(1) <= \ADDRESS_BUS[1]~output_o\;

ww_ADDRESS_BUS(0) <= \ADDRESS_BUS[0]~output_o\;

ww_DEBUG_ALU_ACTION_ID(2) <= \DEBUG_ALU_ACTION_ID[2]~output_o\;

ww_DEBUG_ALU_ACTION_ID(1) <= \DEBUG_ALU_ACTION_ID[1]~output_o\;

ww_DEBUG_ALU_ACTION_ID(0) <= \DEBUG_ALU_ACTION_ID[0]~output_o\;

ww_DEBUG_CU_INSTRUCTION(15) <= \DEBUG_CU_INSTRUCTION[15]~output_o\;

ww_DEBUG_CU_INSTRUCTION(14) <= \DEBUG_CU_INSTRUCTION[14]~output_o\;

ww_DEBUG_CU_INSTRUCTION(13) <= \DEBUG_CU_INSTRUCTION[13]~output_o\;

ww_DEBUG_CU_INSTRUCTION(12) <= \DEBUG_CU_INSTRUCTION[12]~output_o\;

ww_DEBUG_CU_INSTRUCTION(11) <= \DEBUG_CU_INSTRUCTION[11]~output_o\;

ww_DEBUG_CU_INSTRUCTION(10) <= \DEBUG_CU_INSTRUCTION[10]~output_o\;

ww_DEBUG_CU_INSTRUCTION(9) <= \DEBUG_CU_INSTRUCTION[9]~output_o\;

ww_DEBUG_CU_INSTRUCTION(8) <= \DEBUG_CU_INSTRUCTION[8]~output_o\;

ww_DEBUG_CU_INSTRUCTION(7) <= \DEBUG_CU_INSTRUCTION[7]~output_o\;

ww_DEBUG_CU_INSTRUCTION(6) <= \DEBUG_CU_INSTRUCTION[6]~output_o\;

ww_DEBUG_CU_INSTRUCTION(5) <= \DEBUG_CU_INSTRUCTION[5]~output_o\;

ww_DEBUG_CU_INSTRUCTION(4) <= \DEBUG_CU_INSTRUCTION[4]~output_o\;

ww_DEBUG_CU_INSTRUCTION(3) <= \DEBUG_CU_INSTRUCTION[3]~output_o\;

ww_DEBUG_CU_INSTRUCTION(2) <= \DEBUG_CU_INSTRUCTION[2]~output_o\;

ww_DEBUG_CU_INSTRUCTION(1) <= \DEBUG_CU_INSTRUCTION[1]~output_o\;

ww_DEBUG_CU_INSTRUCTION(0) <= \DEBUG_CU_INSTRUCTION[0]~output_o\;

DATA_BUS_OUT(15) <= \DATA_BUS_OUT[15]~output_o\;

DATA_BUS_OUT(14) <= \DATA_BUS_OUT[14]~output_o\;

DATA_BUS_OUT(13) <= \DATA_BUS_OUT[13]~output_o\;

DATA_BUS_OUT(12) <= \DATA_BUS_OUT[12]~output_o\;

DATA_BUS_OUT(11) <= \DATA_BUS_OUT[11]~output_o\;

DATA_BUS_OUT(10) <= \DATA_BUS_OUT[10]~output_o\;

DATA_BUS_OUT(9) <= \DATA_BUS_OUT[9]~output_o\;

DATA_BUS_OUT(8) <= \DATA_BUS_OUT[8]~output_o\;

DATA_BUS_OUT(7) <= \DATA_BUS_OUT[7]~output_o\;

DATA_BUS_OUT(6) <= \DATA_BUS_OUT[6]~output_o\;

DATA_BUS_OUT(5) <= \DATA_BUS_OUT[5]~output_o\;

DATA_BUS_OUT(4) <= \DATA_BUS_OUT[4]~output_o\;

DATA_BUS_OUT(3) <= \DATA_BUS_OUT[3]~output_o\;

DATA_BUS_OUT(2) <= \DATA_BUS_OUT[2]~output_o\;

DATA_BUS_OUT(1) <= \DATA_BUS_OUT[1]~output_o\;

DATA_BUS_OUT(0) <= \DATA_BUS_OUT[0]~output_o\;

DATA_BUS_IN(15) <= \DATA_BUS_IN[15]~output_o\;

DATA_BUS_IN(14) <= \DATA_BUS_IN[14]~output_o\;

DATA_BUS_IN(13) <= \DATA_BUS_IN[13]~output_o\;

DATA_BUS_IN(12) <= \DATA_BUS_IN[12]~output_o\;

DATA_BUS_IN(11) <= \DATA_BUS_IN[11]~output_o\;

DATA_BUS_IN(10) <= \DATA_BUS_IN[10]~output_o\;

DATA_BUS_IN(9) <= \DATA_BUS_IN[9]~output_o\;

DATA_BUS_IN(8) <= \DATA_BUS_IN[8]~output_o\;

DATA_BUS_IN(7) <= \DATA_BUS_IN[7]~output_o\;

DATA_BUS_IN(6) <= \DATA_BUS_IN[6]~output_o\;

DATA_BUS_IN(5) <= \DATA_BUS_IN[5]~output_o\;

DATA_BUS_IN(4) <= \DATA_BUS_IN[4]~output_o\;

DATA_BUS_IN(3) <= \DATA_BUS_IN[3]~output_o\;

DATA_BUS_IN(2) <= \DATA_BUS_IN[2]~output_o\;

DATA_BUS_IN(1) <= \DATA_BUS_IN[1]~output_o\;

DATA_BUS_IN(0) <= \DATA_BUS_IN[0]~output_o\;
END structure;


