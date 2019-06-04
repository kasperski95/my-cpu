library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ram_tb is
end ram_tb;


architecture test of ram_tb is
	component ram
    port (
      CLK                   : in std_logic;
      WR                    : in std_logic;
      DATA_INPUT            : in signed(15 downto 0);
      ADDRESS_TO_READ_FROM  : in unsigned(15 downto 0);
      ADDRESS_TO_WRITE_TO   : in unsigned(15 downto 0);
      DATA_OUTPUT           : out signed(15 downto 0)
    );
	end component;

  signal clk                   : std_logic;
  signal wr                    : std_logic;
  signal data_input            : signed(15 downto 0);
  signal address_to_read_from  : unsigned(15 downto 0);
  signal address_to_write_to   : unsigned(15 downto 0);
  signal data_output           : signed(15 downto 0);
  
begin
  ram_inst: ram port map (
    CLK => clk,
    WR => wr,
    DATA_INPUT => data_input,
    ADDRESS_TO_READ_FROM => address_to_read_from,
    ADDRESS_TO_WRITE_TO => address_to_write_to,
    DATA_OUTPUT => data_output
  );

  process
  begin
    -- WRITE AND READ
    clk <= '0';

    data_input <= "0000000000001010";
    address_to_write_to <= "0101010101010101";
    wr <= '1';
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';

    data_input <= "0000000000000000";
    wr <= '0';
    address_to_read_from <= "0101010101010101";
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';

    assert to_integer(data_output) = 10 report "WRITE AND READ";
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';


    assert false report "Reached end of RAM test";
    wait;
  end process;
end test;