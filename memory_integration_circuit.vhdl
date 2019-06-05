library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory_integration_circuit is
  port (
    ADDRESS_BUS       : out unsigned(15 downto 0);
    DATA_BUS_IN       : in signed (15 downto 0);
    DATA_BUS_OUT      : out signed (15 downto 0);
    DATA_TO_WRITE     : in signed(15 downto 0);
    DATA_TO_READ      : out signed(15 downto 0);
    SEND_ADDRESS, SAVE_DATA_TO_WRITE, WRITE_DATA, READ_DATA : in std_logic;
    ADDRESS_TO_SEND  : in unsigned (15 downto 0);
    WR, RD            : out std_logic
  );
end entity;


architecture rtl of memory_integration_circuit is
begin
  process(SEND_ADDRESS, ADDRESS_TO_SEND, SAVE_DATA_TO_WRITE, DATA_TO_WRITE, DATA_BUS_IN, WRITE_DATA, READ_DATA)
    variable mbr_in, mbr_out, data_bus_out_out : signed(15 downto 0);
    variable mar                                : unsigned(15 downto 0);

  begin
    if (SEND_ADDRESS = '1') then
      mar := ADDRESS_TO_SEND;
    end if;

    if (SAVE_DATA_TO_WRITE = '1') then
      mbr_out := DATA_TO_WRITE;
    end if;

    if (READ_DATA = '1') then
      mbr_in := DATA_BUS_IN;
    end if;

    if (WRITE_DATA = '1') then 
      data_bus_out_out := mbr_out;
    else
      data_bus_out_out := "0000000000000000";
    end if;

    DATA_BUS_OUT <= data_bus_out_out;
    DATA_TO_READ <= mbr_in;
    ADDRESS_BUS <= mar;
    WR <= WRITE_DATA;
    RD <= READ_DATA;
  end process;
end rtl; 