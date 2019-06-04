library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity registers_tb is
end registers_tb;


architecture test of registers_tb is
	component registers
    port (
      CLK 											: in std_logic;
      ACTION_ID 								: in signed(2 downto 0);
      DATA_INPUT 								: in signed(15 downto 0);
      REGISTER_ID_TO_WRITE 			: in signed(3 downto 0);
      VALUE_TO_WRITE 						: in signed(15 downto 0);
      REGISTER_ID_TO_READ_A 		: in signed(3 downto 0);
      REGISTER_A 								: out signed(15 downto 0);
      REGISTER_ID_TO_READ_B 		: in signed(3 downto 0);
      REGISTER_B 								: out signed(15 downto 0);
      ADDRESS_REGISTER_TO_READ 	: in signed(1 downto 0);
      ADDRESS_REGISTER 					: out signed(15 downto 0);
      NEXT_INSTRUCTION 					: out signed(15 downto 0)
    );
	end component;

	signal clk 											  : std_logic;
  signal action_id 							  	: signed(2 downto 0);
  signal data_input 								: signed(15 downto 0);
  signal register_id_to_write 			: signed(3 downto 0);
  signal value_to_write 						: signed(15 downto 0);
  signal register_id_to_read_a 	    : signed(3 downto 0);
  signal result_a    								: signed(15 downto 0);
  signal register_id_to_read_b 		  : signed(3 downto 0);
  signal result_b   								: signed(15 downto 0);
  signal address_register_to_read 	: signed(1 downto 0);
  signal address_register 					: signed(15 downto 0);
  signal next_instruction 					: signed(15 downto 0);
  
begin
  registers_inst: registers port map (
    CLK => clk,
    ACTION_ID => action_id,
    DATA_INPUT => data_input,
    REGISTER_ID_TO_WRITE => register_id_to_write,
    VALUE_TO_WRITE => value_to_write,
    REGISTER_ID_TO_READ_A => register_id_to_read_a,
    REGISTER_A => result_a,
    REGISTER_ID_TO_READ_B => register_id_to_read_b,
    REGISTER_B => result_b,
    ADDRESS_REGISTER_TO_READ => address_register_to_read,
    ADDRESS_REGISTER => address_register,
    NEXT_INSTRUCTION => next_instruction
  );

  process
  begin
    clk <= '0';

    -- ACTION_PC++
    value_to_write <= "0000000000001010";
    register_id_to_write <= "0010";
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0'; 
    
    value_to_write <= "0000000000000000";
    register_id_to_write <= "0000";
    action_id <= "001";
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0'; 

    action_id <= "000";
    register_id_to_read_a <= "0010";
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0'; 

    assert to_integer(result_a) = 11 report "ACTION_PC++[000] #001: result = 11"; 
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0'; wait for 1 ns;


    -- SAVE & LOAD FROM GENERAL PURPOSE REGISTER
    register_id_to_write <= "1000";
    value_to_write <= "0000000000001010";
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0'; 

    register_id_to_write <= "0000";
    value_to_write <= "0000000000000000";
    register_id_to_read_a <= "1000";
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0'; 

    assert to_integer(result_a) = 10 report "SAVE & LOAD[1000] #001: result = 10"; 
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0'; wait for 1 ns;

    

    assert false report "Reached end of REGISTERS test";
    wait;
  end process;
end test;