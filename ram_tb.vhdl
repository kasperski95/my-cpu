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
      RD                    : in std_logic;
      DATA_BUS_IN           : in signed(15 downto 0);
      DATA_BUS_OUT          : out signed(15 downto 0);
      ADDRESS_BUS           : in unsigned(15 downto 0)
    );
	end component;

  signal clk                   : std_logic;
  signal wr                    : std_logic;
  signal rd                    : std_logic;
  signal data_bus_in           : signed(15 downto 0);
  signal data_bus_out          : signed(15 downto 0);
  signal address_bus           : unsigned(15 downto 0);
  
begin
  ram_inst: ram port map (
    CLK => clk,
    WR => wr,
    RD => rd,
    DATA_BUS_IN => data_bus_in,
    DATA_BUS_OUT => data_bus_out,
    ADDRESS_BUS => address_bus
  );

  process
  begin
    
    clk <= '0';
    address_bus <= "0000000000000010";
    wr <= '0';
    rd <= '1';
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';

    -- WRITE AND READ
    data_bus_in <= "0000000000001010";
    address_bus <= "0000000000000010";
    wr <= '1';
    rd <= '0';
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';

    data_bus_in <= "0000000000000000";
    address_bus <= "0000000000000010";
    wr <= '0';
    rd <= '1';
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';

    assert to_integer(data_bus_out) = 10 report "WRITE AND READ";
    wait for 1 ns; clk <= '1'; wait for 1 ns; clk <= '0';


    assert false report "Reached end of RAM test";
    wait;
  end process;
end test;