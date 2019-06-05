library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity control_unit is
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
end entity control_unit;


architecture logic of control_unit is
  constant mov : std_logic_vector(3 downto 0) := "1000";
  constant internal_zero : std_logic_vector(3 downto 0) := "0000";
  type lifecycle_t is (
    fetch,
    decode_instruction,
    save
  );
  type state_t is (
    fetch,
    handle_args_as_registers,
    save
  );
  signal lifecycle : lifecycle_t := fetch;
  signal state : state_t := fetch;

begin
  process(CLK)
  begin
    if (RESET = '1') then
      lifecycle <= fetch;
    elsif rising_edge(CLK) then
      case (lifecycle) is
        when fetch =>
          state <= fetch;
          lifecycle <= decode_instruction;

        when decode_instruction =>
          case INSTRUCTION(15 downto 13) is
            when "001" => -- arg1, arg2 : general purpose registers
              state <= handle_args_as_registers; 
              lifecycle <= save;
            when others => null;
          end case;
          
        when save =>
          state <= save;
          lifecycle <= fetch;

        when others =>
          null;

      end case;
    end if;
  end process;


  process(state)
    variable register_id_to_read_a_out : unsigned(3 downto 0) := "0000";
    variable register_id_to_read_b_out : unsigned(3 downto 0) := "0000";
    variable register_id_to_write_out : unsigned(3 downto 0) := "0000";
    variable register_action_id_out : unsigned(2 downto 0) := "000"; 
    variable alu_action_id_out : std_logic_vector(2 downto 0) := "000"; 
    variable address_register_to_read_out : unsigned(1 downto 0) := "00";
    variable send_address_out : std_logic := '0';
    variable save_data_to_write_out : std_logic := '0';
    variable write_data_out : std_logic := '0';
    variable read_data_out : std_logic := '0';
    variable action : std_logic_vector(3 downto 0) := "0000"; 

  begin
    register_id_to_read_a_out := "0000";
    register_id_to_read_b_out := "0000";
    register_id_to_write_out := "0000";
    register_action_id_out := "000"; 
    alu_action_id_out := "000";
    address_register_to_read_out := "00";
    send_address_out := '0';
    save_data_to_write_out := '0';
    write_data_out := '0';
    read_data_out := '0';

    case state is      
      when fetch =>
        read_data_out := '1';
        register_action_id_out := "001";
      
      when save =>
        write_data_out := '1';

      when handle_args_as_registers =>
        register_id_to_read_a_out := unsigned(INSTRUCTION(8 downto 5));
        register_id_to_read_b_out := unsigned(INSTRUCTION(3 downto 0));
        action := '1' & INSTRUCTION(12 downto 10);
    end case;

    -- ACTION
    case action is
      when mov =>
        alu_action_id_out := "001";
        action := internal_zero;
      when others =>
        alu_action_id_out := "000";
    end case;
  
    REGISTER_ID_TO_READ_A <= register_id_to_read_a_out;
    REGISTER_ID_TO_READ_B <= register_id_to_read_b_out;
    REGISTER_ID_TO_WRITE <= register_id_to_write_out;
    REGISTER_ACTION_ID <= register_action_id_out;
    ADDRESS_REGISTER_TO_READ <= address_register_to_read_out;
    SEND_ADDRESS <= send_address_out;
    SAVE_DATA_TO_WRITE <= save_data_to_write_out;
    WRITE_DATA <= write_data_out;
    READ_DATA <= read_data_out;
    ALU_ACTION_ID <= alu_action_id_out;
  end process;

end architecture;