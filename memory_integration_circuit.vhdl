library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory_integration_circuit is
  port (
    ADDRESS_BUS       : in unsigned(15 downto 0);
    DATA_BUS          : inout signed (15 downto 0);
    DATA_TO_WRITE     : in signed(15 downto 0);
    DATA_TO_READ      : out signed(15 downto 0);
    READ_ADDRESS_BUS, SAVE_DATA_TO_WRITE, WRITE_DATA, READ_DATA : in std_logic;
    ADDRESS_TO_WRITE  : out unsigned (15 downto 0);
    WR, RD            : out std_logic
  );
end entity;


architecture rtl of memory_integration_circuit is
begin
  process(READ_ADDRESS_BUS, ADDRESS_BUS, SAVE_DATA_TO_WRITE, DATA_TO_WRITE, DATA_BUS, WRITE_DATA, READ_DATA)
    variable mbr_in, mbr_out  : signed(15 downto 0);
    variable mar              : unsigned(15 downto 0);

  begin
    if (READ_ADDRESS_BUS = '1') then
      mar := ADDRESS_BUS;
    end if;

    if (SAVE_DATA_TO_WRITE = '1') then
      mbr_out := DATA_TO_WRITE;
    end if;

    if (READ_DATA = '1') then
      mbr_in := DATA_BUS;
    end if;

    if (WRITE_DATA = '1') then 
      DATA_BUS <= mbr_out;
    else
      DATA_BUS <= "ZZZZZZZZZZZZZZZZ";
    end if;

    DATA_TO_READ <= mbr_in;
    ADDRESS_TO_WRITE <= mar;
    WR <= WRITE_DATA;
    RD <= READ_DATA;
  end process;
end rtl; 