library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ram is
  port (
    CLK                   : in std_logic;
    WR                    : in std_logic;
    DATA_INPUT            : in signed(15 downto 0);
    ADDRESS_TO_READ_FROM  : in unsigned(15 downto 0);
    ADDRESS_TO_WRITE_TO   : in unsigned(15 downto 0);
    DATA_OUTPUT           : out signed(15 downto 0)
  );
end entity ram;


architecture logic of ram is
  type memory is array(65535 downto 0) of signed(15 downto 0);
  signal content : memory;     
begin
  process(CLK)
  begin
    if (rising_edge(CLK)) then
      if (WR = '1') then
          content(to_integer(ADDRESS_TO_WRITE_TO)) <= DATA_INPUT;
      end if;
      DATA_OUTPUT <= content(to_integer(ADDRESS_TO_READ_FROM));
    end if;
  end process;
end architecture;