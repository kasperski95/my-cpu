library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ram is
  port (
    CLK                   : in std_logic;
    WR                    : in std_logic;
    RD                    : in std_logic;
    DATA_BUS_IN           : in signed(15 downto 0);
    DATA_BUS_OUT          : out signed(15 downto 0);
    ADDRESS_BUS           : in unsigned(15 downto 0)
  );
end entity ram;


architecture logic of ram is
  type memory is array(3 downto 0) of signed(15 downto 0);
  signal content : memory := (
    "0000110100000000",
    "0101010101010101",
    "0101010101010101",
    "0101010101010101"
  );

begin
  process(CLK)

  begin
    if rising_edge(CLK) then
      --if (WR = '1') then
      --  content(to_integer(ADDRESS_BUS)) <= DATA_BUS_IN;
      --end if;
      
      DATA_BUS_OUT <= content(to_integer(ADDRESS_BUS));

    end if;

  end process;
end architecture;