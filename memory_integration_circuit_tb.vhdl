library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory_integration_circuit_tb is
end memory_integration_circuit_tb;


architecture test of memory_integration_circuit_tb is
	component memory_integration_circuit
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
	end component;

  signal address_bus        : unsigned(15 downto 0);
  signal data_bus_in        : signed(15 downto 0);
  signal data_bus_out       : signed(15 downto 0);
  signal data_to_write      : signed(15 downto 0);
  signal data_to_read       : signed(15 downto 0);
  signal send_address       : std_logic;
  signal save_data_to_write : std_logic;
  signal write_data         : std_logic;
  signal read_data          : std_logic;
  signal address_to_send    : unsigned(15 downto 0);
  signal wr                 : std_logic;
  signal rd                 : std_logic;
  
begin
  memory_integration_circuit_inst: memory_integration_circuit port map (
    ADDRESS_BUS => address_bus,
    DATA_BUS_IN => data_bus_in,
    DATA_BUS_OUT => data_bus_out,
    DATA_TO_WRITE => data_to_write,
    DATA_TO_READ => data_to_read,
    SEND_ADDRESS => send_address,
    SAVE_DATA_TO_WRITE => save_data_to_write,
    WRITE_DATA => write_data,
    READ_DATA => read_data,
    ADDRESS_TO_SEND => address_to_send,
    WR => wr,
    RD => rd
  );

  process
  begin
    -- READ FROM DATA BUS
    data_bus_in <= "0000000000001010";
    read_data <= '1'; 
    wait for 1 ns;

    read_data <= '0'; 
    data_bus_in <= "0000000000000000";
    assert to_integer(data_to_read) = 10 report "Read data bus";
    wait for 1 ns;

    assert false report "Reached end of MEMORY_INTEGRATION_CIRCUIT test";
    wait;
  end process;
end test;