library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity control_unit_tb is
end control_unit_tb;


architecture test of control_unit_tb is
	component control_unit
    port (
      CLK, RESET : in std_logic;
      INSTRUCTION : in std_logic_vector(15 downto 0);
      CARRY, ZERO, NEGATIVE, PARITY : in std_logic;
      ALU_ACTION_ID : out std_logic_vector(2 downto 0);
      REGISTER_ID_TO_READ_A : out unsigned(3 downto 0);
      REGISTER_ID_TO_READ_B : out unsigned(3 downto 0);
      REGISTER_ID_TO_WRITE : out unsigned(3 downto 0);
      REGISTER_ACTION_ID : out unsigned(2 downto 0); 
      ADDRESS_REGISTER_TO_READ : out unsigned(1 downto 0);
      SEND_ADDRESS : out std_logic;
      SAVE_DATA_TO_WRITE : out std_logic;
      WRITE_DATA : out std_logic;
      READ_DATA : out std_logic
    );
	end component;

  signal clk : std_logic;
  signal reset : std_logic;
  signal instruction : std_logic_vector(15 downto 0);
  signal carry : std_logic;
  signal zero : std_logic;
  signal negative : std_logic;
  signal parity : std_logic;
  signal alu_action_id : std_logic_vector(2 downto 0);
  signal register_id_to_read_a : unsigned(3 downto 0);
  signal register_id_to_read_b : unsigned(3 downto 0);
  signal register_id_to_write : unsigned(3 downto 0);
  signal register_action_id : unsigned(2 downto 0); 
  signal address_register_to_read : unsigned(1 downto 0);
  signal send_address : std_logic;
  signal save_data_to_write : std_logic;
  signal write_data : std_logic;
  signal read_data : std_logic;
  
begin
  control_unit_inst: control_unit port map (
    CLK => clk,
    RESET => reset,
    INSTRUCTION => instruction,
    CARRY => carry,
    ZERO => zero,
    NEGATIVE => negative,
    PARITY => parity,
    ALU_ACTION_ID => alu_action_id,
    REGISTER_ID_TO_READ_A => register_id_to_read_a,
    REGISTER_ID_TO_READ_B => register_id_to_read_b,
    REGISTER_ID_TO_WRITE => register_id_to_write,
    REGISTER_ACTION_ID => register_action_id,
    ADDRESS_REGISTER_TO_READ => address_register_to_read,
    SEND_ADDRESS => send_address,
    SAVE_DATA_TO_WRITE => save_data_to_write,
    WRITE_DATA => write_data,
    READ_DATA => read_data
  );

  process
  begin
    clk <= '0';
    wait for 1 ns; clk <= '1';
    instruction <= "0010000100001001";
    wait for 1 ns; clk <= '0';
    
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';

    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';

    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';
    
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';


    assert false report "Reached end of CONTROL_UNIT test";
    wait;
  end process;
end test;